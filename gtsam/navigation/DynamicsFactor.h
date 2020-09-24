//
// Created by xxiao on 2020/9/24.
//

#ifndef GTSAM_DYNAMICSFACTOR_H
#define GTSAM_DYNAMICSFACTOR_H

#endif //GTSAM_DYNAMICSFACTOR_H
//
// Created by xxiao on 2020/9/14.
//

#ifndef GTSAM_DYNAMICSFACTOR_H
#define GTSAM_DYNAMICSFACTOR_H

#endif //GTSAM_DYNAMICSFACTOR_H
/* ----------------------------------------------------------------------------

 * GTSAM Copyright 2010, Georgia Tech Research Corporation,
 * Atlanta, Georgia 30332-0415
 * All Rights Reserved
 * Authors: Frank Dellaert, et al. (see THANKS for the full author list)

 * See LICENSE for the license information

 * -------------------------------------------------------------------------- */

/**
 *  @file  ImuFactor.h
 *  @author Luca Carlone
 *  @author Stephen Williams
 *  @author Richard Roberts
 *  @author Vadim Indelman
 *  @author David Jensen
 *  @author Frank Dellaert
 **/

#pragma once

/* GTSAM includes */
#include <gtsam/nonlinear/NonlinearFactor.h>
#include <gtsam/navigation/ManifoldPreintegration.h>
#include <gtsam/navigation/TangentPreintegration.h>
#include <gtsam/base/debug.h>

namespace gtsam {

#ifdef GTSAM_TANGENT_PREINTEGRATION
    typedef TangentPreintegration PreintegrationType;
#else
    typedef ManifoldPreintegration PreintegrationType;
#endif


/**
 * PreintegratedImuMeasurements accumulates (integrates) the IMU measurements
 * (rotation rates and accelerations) and the corresponding covariance matrix.
 * The measurements are then used to build the Preintegrated IMU factor.
 * Integration is done incrementally (ideally, one integrates the measurement
 * as soon as it is received from the IMU) so as to avoid costly integration
 * at time of factor construction.
 *
 * @addtogroup SLAM
 */
    class GTSAM_EXPORT PreintegratedDysMeasurements: public PreintegrationType {

        friend class DynamicsFactor;

    protected:

        Matrix3 preintMeasCov_; ///< COVARIANCE OF: [PreintROTATION PreintPOSITION PreintVELOCITY]
        ///< (first-order propagation from *measurementCovariance*).

    public:

        /// Default constructor for serialization and Cython wrapper
        PreintegratedDysMeasurements() {
            preintMeasCov_.setZero();
        }

        /**
          *  Constructor, initializes the class with no measurements
          *  @param p       Parameters, typically fixed in a single application
          *  @param biasHat Current estimate of acceleration and rotation rate biases
          */
        PreintegratedDysMeasurements(const boost::shared_ptr<PreintegrationParams>& p,
                                     const imuBias::ConstantBias& biasHat = imuBias::ConstantBias()) :
                PreintegrationType(p, biasHat) {
            preintMeasCov_.setZero();
        }

/**
  *  Construct preintegrated directly from members: base class and preintMeasCov
  *  @param base               PreintegrationType instance
  *  @param preintMeasCov      Covariance matrix used in noise model.
  */
        PreintegratedDysMeasurements(const PreintegrationType& base, const Matrix3& preintMeasCov)
                : PreintegrationType(base),
                  preintMeasCov_(preintMeasCov) {
        }

        /// Virtual destructor
        virtual ~PreintegratedDysMeasurements() {
        }

        /// print
        void print(const std::string& s = "Preintegrated Measurements:") const override;

        /// equals
        bool equals(const PreintegratedDysMeasurements& expected, double tol = 1e-9) const;

        /// Re-initialize PreintegratedIMUMeasurements
        void resetIntegration() override;

        /**
         * Add a single Dynamics measurement to the preintegration.
         * @param measuredAcc Measured acceleration (in body frame, as given by the sensor)
         * @param measuredOmega Measured angular velocity (as given by the sensor)
         * @param dt Time interval between this and the last IMU measurement
         */
        void integrateMeasurement(const Vector3& vehicleVel,
                                  const Vector3& vehicleOmega, const double dt) override;

        /// Add multiple measurements, in matrix columns
        void integrateMeasurements(const Matrix& vehicleVels, const Matrix& vehicleOmegas,
                                   const Matrix& dts);

        /// Return pre-integrated measurement covariance
        Matrix preintMeasCov() const { return preintMeasCov_; }

#ifdef GTSAM_TANGENT_PREINTEGRATION
        /// Merge in a different set of measurements and update bias derivatives accordingly
        void mergeWith(const PreintegratedDysMeasurements& pim, Matrix9* H1, Matrix9* H2);
#endif

    private:
        /// Serialization function
        friend class boost::serialization::access;
        template<class ARCHIVE>
        void serialize(ARCHIVE & ar, const unsigned int /*version*/) {
            namespace bs = ::boost::serialization;
            ar & BOOST_SERIALIZATION_BASE_OBJECT_NVP(PreintegrationType);
            ar & BOOST_SERIALIZATION_NVP(preintMeasCov_);
        }
    };

/**
 * ImuFactor is a 5-ways factor involving previous state (pose and velocity of
 * the vehicle at previous time step), current state (pose and velocity at
 * current time step), and the bias estimate. Following the preintegration
 * scheme proposed in [2], the ImuFactor includes many IMU measurements, which
 * are "summarized" using the PreintegratedIMUMeasurements class.
 * Note that this factor does not model "temporal consistency" of the biases
 * (which are usually slowly varying quantities), which is up to the caller.
 * See also CombinedImuFactor for a class that does this for you.
 *
 * @addtogroup SLAM
 */
    class GTSAM_EXPORT DynamicsFactor: public NoiseModelFactor2<Pose3, Pose3> {
    private:

        typedef DynamicsFactor This;
        typedef NoiseModelFactor2<Pose3, Pose3> Base;

        PreintegratedDysMeasurements _PIM_;

    public:

        /** Shorthand for a smart pointer to a factor */
#if !defined(_MSC_VER) && __GNUC__ == 4 && __GNUC_MINOR__ > 5
        typedef typename boost::shared_ptr<ImuFactor> shared_ptr;
#else
        typedef boost::shared_ptr<DynamicsFactor> shared_ptr;
#endif

        /** Default constructor - only use for serialization */
        DynamicsFactor() {}

        /**
         * Constructor
         * @param pose_i Previous pose key
         * @param vel_i  Previous velocity key
         * @param pose_j Current pose key
         * @param vel_j  Current velocity key
         * @param bias   Previous bias key
         */
        DynamicsFactor(Key pose_i, Key pose_j,
                       const PreintegratedDysMeasurements& preintegratedMeasurements);

        virtual ~DynamicsFactor() {
        }

        /// @return a deep copy of this factor
        gtsam::NonlinearFactor::shared_ptr clone() const override;

        /// @name Testable
        /// @{
        GTSAM_EXPORT friend std::ostream& operator<<(std::ostream& os, const ImuFactor&);
        void print(const std::string& s = "", const KeyFormatter& keyFormatter =
        DefaultKeyFormatter) const override;
        bool equals(const NonlinearFactor& expected, double tol = 1e-9) const override;
        /// @}

        /** Access the preintegrated measurements. */

        const PreintegratedDysMeasurements& preintegratedMeasurements() const {
            return _PIM_;
        }

        /** implement functions needed to derive from Factor */

        /// vector of errors
        Vector evaluateError(const Pose3& pose_i, const Vector3& vel_i,
                             const Pose3& pose_j, const Vector3& vel_j,
                             const imuBias::ConstantBias& bias_i, boost::optional<Matrix&> H1 =
        boost::none, boost::optional<Matrix&> H2 = boost::none,
                             boost::optional<Matrix&> H3 = boost::none, boost::optional<Matrix&> H4 =
        boost::none, boost::optional<Matrix&> H5 = boost::none) const override;

#ifdef GTSAM_TANGENT_PREINTEGRATION
        /// Merge two pre-integrated measurement classes
        static PreintegratedDysMeasurements Merge(
                const PreintegratedDysMeasurements& pim01,
                const PreintegratedDysMeasurements& pim12);

        /// Merge two factors
        static shared_ptr Merge(const shared_ptr& f01, const shared_ptr& f12);
#endif

    private:
        /** Serialization function */
        friend class boost::serialization::access;
        template<class ARCHIVE>
        void serialize(ARCHIVE & ar, const unsigned int /*version*/) {
            ar & boost::serialization::make_nvp("NoiseModelFactor5",
                                                boost::serialization::base_object<Base>(*this));
            ar & BOOST_SERIALIZATION_NVP(_PIM_);
        }
    };
// class ImuFactor

/**
 * ImuFactor2 is a ternary factor that uses NavStates rather than Pose/Velocity.
 * @addtogroup SLAM
 */

    template <>
    struct traits<PreintegratedDysMeasurements> : public Testable<PreintegratedDysMeasurements> {};

    template <>
    struct traits<DynamicsFactor> : public Testable<DynamicsFactor> {};



} /// namespace gtsam
