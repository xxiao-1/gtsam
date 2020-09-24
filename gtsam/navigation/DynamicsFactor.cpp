//
// Created by xxiao on 2020/9/24.
//
//
// Created by xxiao on 2020/9/14.
//

/* ----------------------------------------------------------------------------

 * GTSAM Copyright 2010, Georgia Tech Research Corporation,
 * Atlanta, Georgia 30332-0415
 * All Rights Reserved
 * Authors: Frank Dellaert, et al. (see THANKS for the full author list)

 * See LICENSE for the license information

 * -------------------------------------------------------------------------- */

/**
 *  @file  DynamicsFactor.cpp
 *  @author Hongru Xiao

 **/

#include <gtsam/navigation/DynamicsFactor.h>

/* External or standard includes */
#include <ostream>

namespace gtsam {

    using namespace std;

//------------------------------------------------------------------------------
// Inner class PreintegratedImuMeasurements
//------------------------------------------------------------------------------
    void PreintegratedDysMeasurements::print(const string& s) const {
        PreintegrationType::print(s);
        cout << "    preintMeasCov \n[" << preintMeasCov_ << "]" << endl;
    }

//------------------------------------------------------------------------------
    bool PreintegratedDysMeasurements::equals(
            const PreintegratedDysMeasurements& other, double tol) const {
        return PreintegrationType::equals(other, tol)
               && equal_with_abs_tol(preintMeasCov_, other.preintMeasCov_, tol);
    }

//------------------------------------------------------------------------------
    void PreintegratedDysMeasurements::resetIntegration() {
        PreintegrationType::resetIntegration();
        preintMeasCov_.setZero();
    }

//------------------------------------------------------------------------------
    void PreintegratedDysMeasurements::integrateMeasurement(
            const Vector3& measuredAcc, const Vector3& measuredOmega, double dt) {
        if (dt <= 0) {
            throw std::runtime_error(
                    "PreintegratedImuMeasurements::integrateMeasurement: dt <=0");
        }

        // Update preintegrated measurements (also get Jacobian)
        Matrix9 A;  // overall Jacobian wrt preintegrated measurements (df/dx)
        Matrix93 B, C;
        PreintegrationType::update(measuredAcc, measuredOmega, dt, &A, &B, &C);

        // first order covariance propagation:
        // as in [2] we consider a first order propagation that can be seen as a
        // prediction phase in EKF

        // propagate uncertainty
        // TODO(frank): use noiseModel routine so we can have arbitrary noise models.
        const Matrix3& aCov = p().accelerometerCovariance;
        const Matrix3& wCov = p().gyroscopeCovariance;
        const Matrix3& iCov = p().integrationCovariance;

        // (1/dt) allows to pass from continuous time noise to discrete time noise
        preintMeasCov_ = A * preintMeasCov_ * A.transpose();
        preintMeasCov_.noalias() += B * (aCov / dt) * B.transpose();
        preintMeasCov_.noalias() += C * (wCov / dt) * C.transpose();

        // NOTE(frank): (Gi*dt)*(C/dt)*(Gi'*dt), with Gi << Z_3x3, I_3x3, Z_3x3
        preintMeasCov_.block<3, 3>(3, 3).noalias() += iCov * dt;
    }

//------------------------------------------------------------------------------
    void PreintegratedDysMeasurements::integrateMeasurements(
            const Matrix& measuredAccs, const Matrix& measuredOmegas,
            const Matrix& dts) {
        assert(
                measuredAccs.rows() == 3 && measuredOmegas.rows() == 3 && dts.rows() == 1);
        assert(dts.cols() >= 1);
        assert(measuredAccs.cols() == dts.cols());
        assert(measuredOmegas.cols() == dts.cols());
        size_t n = static_cast<size_t>(dts.cols());
        for (size_t j = 0; j < n; j++) {
            integrateMeasurement(measuredAccs.col(j), measuredOmegas.col(j), dts(0, j));
        }
    }

//------------------------------------------------------------------------------
#ifdef GTSAM_TANGENT_PREINTEGRATION
    void PreintegratedDysMeasurements::mergeWith(const PreintegratedDysMeasurements& pim12, //
                                                 Matrix9* H1, Matrix9* H2) {
        PreintegrationType::mergeWith(pim12, H1, H2);
        // NOTE(gareth): Temporary P is needed as of Eigen 3.3
        const Matrix9 P = *H1 * preintMeasCov_ * H1->transpose();
        preintMeasCov_ = P + *H2 * pim12.preintMeasCov_ * H2->transpose();
    }
#endif
//------------------------------------------------------------------------------
// ImuFactor methods
//------------------------------------------------------------------------------
    DynamicsFactor::DynamicsFactor(Key pose_i,  Key pose_j,
                                   const PreintegratedDysMeasurements& pim) :
            Base(noiseModel::Gaussian::Covariance(pim.preintMeasCov_), pose_i,
                 pose_j,  bias), _PIM_(pim) {
    }

//------------------------------------------------------------------------------
    NonlinearFactor::shared_ptr DynamicsFactor::clone() const {
        return boost::static_pointer_cast<NonlinearFactor>(
                NonlinearFactor::shared_ptr(new This(*this)));
    }

//------------------------------------------------------------------------------
    std::ostream& operator<<(std::ostream& os, const DynamicsFactor& f) {
        f._PIM_.print("preintegrated measurements:\n");
        os << "  noise model sigmas: " << f.noiseModel_->sigmas().transpose();
        return os;
    }

//------------------------------------------------------------------------------
    void DynamicsFactor::print(const string& s, const KeyFormatter& keyFormatter) const {
        cout << (s == "" ? s : s + "\n") << "ImuFactor(" << keyFormatter(this->key1())
             << "," << keyFormatter(this->key2())
             << ")\n";
        cout << *this << endl;
    }

//------------------------------------------------------------------------------
    bool DynamicsFactor::equals(const NonlinearFactor& other, double tol) const {
        const This *e = dynamic_cast<const This*>(&other);
        const bool base = Base::equals(*e, tol);
        const bool pim = _PIM_.equals(e->_PIM_, tol);
        return e != nullptr && base && pim;
    }

//------------------------------------------------------------------------------
    Vector DynamicsFactor::evaluateError(const Pose3& pose_i, const Vector3& vel_i,
                                         const Pose3& pose_j, const Vector3& vel_j,
                                         const imuBias::ConstantBias& bias_i, boost::optional<Matrix&> H1,
                                         boost::optional<Matrix&> H2, boost::optional<Matrix&> H3,
                                         boost::optional<Matrix&> H4, boost::optional<Matrix&> H5) const {
        return _PIM_.computeErrorAndJacobians(pose_i, vel_i, pose_j, vel_j, bias_i,
                                              H1, H2, H3, H4, H5);
    }

//------------------------------------------------------------------------------
#ifdef GTSAM_TANGENT_PREINTEGRATION
    PreintegratedDysMeasurements ImuFactor::Merge(
            const PreintegratedDysMeasurements& pim01,
            const PreintegratedDysMeasurements& pim12) {
        if (!pim01.matchesParamsWith(pim12))
            throw std::domain_error(
                    "Cannot merge PreintegratedImuMeasurements with different params");

        if (pim01.params()->body_P_sensor)
            throw std::domain_error(
                    "Cannot merge PreintegratedImuMeasurements with sensor pose yet");

        // the bias for the merged factor will be the bias from 01
        PreintegratedDysMeasurements pim02 = pim01;

        Matrix9 H1, H2;
        pim02.mergeWith(pim12, &H1, &H2);

        return pim02;
    }

//------------------------------------------------------------------------------
    DynamicsFactor::shared_ptr DynamicsFactor::Merge(const shared_ptr& f01,
                                           const shared_ptr& f12) {




        // return new factor
        auto pim02 =
                Merge(f01->preintegratedMeasurements(), f12->preintegratedMeasurements());
        return boost::make_shared<DynamicsFactor>(f01->key1(),  // P0
                                             f01->key2(),  // V0
                                             pim02);
    }
#endif


}
// namespace gtsam

