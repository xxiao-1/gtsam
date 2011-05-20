/* ----------------------------------------------------------------------------

 * GTSAM Copyright 2010, Georgia Tech Research Corporation, 
 * Atlanta, Georgia 30332-0415
 * All Rights Reserved
 * Authors: Frank Dellaert, et al. (see THANKS for the full author list)

 * See LICENSE for the license information

 * -------------------------------------------------------------------------- */

/**
 * @file   GaussianConditional.cpp
 * @brief  Conditional Gaussian Base class
 * @author Christian Potthast
 */

#include <string.h>
#include <boost/format.hpp>
#include <boost/lambda/bind.hpp>

#include <gtsam/linear/GaussianConditional.h>
#include <gtsam/linear/GaussianFactor.h>
#include <gtsam/linear/JacobianFactor.h>
#include <gtsam/base/Matrix-inl.h>

using namespace std;

namespace gtsam {

/* ************************************************************************* */
GaussianConditional::GaussianConditional() : rsd_(matrix_) {}

/* ************************************************************************* */
GaussianConditional::GaussianConditional(Index key) : IndexConditional(key), rsd_(matrix_) {}

/* ************************************************************************* */
GaussianConditional::GaussianConditional(Index key,const Vector& d, const Matrix& R, const Vector& sigmas) :
	    IndexConditional(key), rsd_(matrix_), sigmas_(sigmas) {
  assert(R.rows() <= R.cols());
  size_t dims[] = { R.cols(), 1 };
  rsd_.copyStructureFrom(rsd_type(matrix_, dims, dims+2, d.size()));
  rsd_(0) = R; //.triangularView<Eigen::Upper>();
  get_d_() = d;
}

/* ************************************************************************* */
GaussianConditional::GaussianConditional(Index key, const Vector& d, const Matrix& R,
    Index name1, const Matrix& S, const Vector& sigmas) :
    IndexConditional(key,name1), rsd_(matrix_), sigmas_(sigmas) {
  assert(R.rows() <= R.cols());
  size_t dims[] = { R.cols(), S.cols(), 1 };
  rsd_.copyStructureFrom(rsd_type(matrix_, dims, dims+3, d.size()));
  rsd_(0) = R.triangularView<Eigen::Upper>();
  rsd_(1) = S;
  get_d_() = d;
}

/* ************************************************************************* */
GaussianConditional::GaussianConditional(Index key, const Vector& d, const Matrix& R,
		Index name1, const Matrix& S, Index name2, const Matrix& T, const Vector& sigmas) :
		IndexConditional(key,name1,name2), rsd_(matrix_), sigmas_(sigmas) {
  assert(R.rows() <= R.cols());
  size_t dims[] = { R.cols(), S.cols(), T.cols(), 1 };
  rsd_.copyStructureFrom(rsd_type(matrix_, dims, dims+4, d.size()));
  rsd_(0) = R.triangularView<Eigen::Upper>();
  rsd_(1) = S;
  rsd_(2) = T;
  get_d_() = d;
}

/* ************************************************************************* */
	GaussianConditional::GaussianConditional(Index key, const Vector& d,
			const Matrix& R, const list<pair<Index, Matrix> >& parents, const Vector& sigmas) :
		IndexConditional(key, GetKeys(parents.size(), parents.begin(), parents.end())), rsd_(matrix_), sigmas_(sigmas) {
  assert(R.rows() <= R.cols());
  size_t dims[1+parents.size()+1];
  dims[0] = R.cols();
  size_t j=1;
  std::list<std::pair<Index, Matrix> >::const_iterator parent=parents.begin();
  for(; parent!=parents.end(); ++parent,++j)
    dims[j] = parent->second.cols();
  dims[j] = 1;
  rsd_.copyStructureFrom(rsd_type(matrix_, dims, dims+1+parents.size()+1, d.size()));
  rsd_(0) = R.triangularView<Eigen::Upper>();
  j = 1;
  for(std::list<std::pair<Index, Matrix> >::const_iterator parent=parents.begin(); parent!=parents.end(); ++parent) {
    rsd_(j).noalias() = parent->second;
    ++ j;
  }
  get_d_().noalias() = d;
}

/* ************************************************************************* */
void GaussianConditional::print(const string &s) const
{
  cout << s << ": density on " << key() << endl;
  gtsam::print(Matrix(get_R()),"R");
  for(const_iterator it = beginParents() ; it != endParents() ; it++ ) {
    gtsam::print(Matrix(get_S(it)), (boost::format("A[%1%]")%(*it)).str());
  }
  gtsam::print(Vector(get_d()),"d");
  gtsam::print(sigmas_,"sigmas");
}    

/* ************************************************************************* */
bool GaussianConditional::equals(const GaussianConditional &c, double tol) const {
	// check if the size of the parents_ map is the same
	if (parents().size() != c.parents().size())
		return false;

	// check if R_ and d_ are linear independent
	for (size_t i=0; i<rsd_.rows(); i++) {
		list<Vector> rows1; rows1.push_back(Vector(get_R().row(i)));
		list<Vector> rows2; rows2.push_back(Vector(c.get_R().row(i)));

		// check if the matrices are the same
		// iterate over the parents_ map
		for (const_iterator it = beginParents(); it != endParents(); ++it) {
		  const_iterator it2 = c.beginParents() + (it-beginParents());
		  if(*it != *(it2))
		    return false;
		  rows1.push_back(row(get_S(it), i));
		  rows2.push_back(row(c.get_S(it2), i));
		}

		Vector row1 = concatVectors(rows1);
		Vector row2 = concatVectors(rows2);
		if (!linear_dependent(row1, row2, tol))
			return false;
	}

	// check if sigmas are equal
	if (!(equal_with_abs_tol(sigmas_, c.sigmas_, tol))) return false;

	return true;
}

/* ************************************************************************* */
JacobianFactor::shared_ptr GaussianConditional::toFactor() const {
  return JacobianFactor::shared_ptr(new JacobianFactor(*this));
}

/* ************************************************************************* */
Vector GaussianConditional::solve(const VectorValues& x) const {
  static const bool debug = false;
  if(debug) print("Solving conditional ");
	Vector rhs(get_d());
	for (const_iterator parent = beginParents(); parent != endParents(); ++parent) {
		rhs += -get_S(parent) * x[*parent];
//  ublas::axpy_prod(-get_S(parent), x[*parent], rhs, false);
	}
	if(debug) gtsam::print(Matrix(get_R()), "Calling backSubstituteUpper on ");
	if(debug) gtsam::print(rhs, "rhs: ");
	if(debug) {
	  Vector soln = backSubstituteUpper(get_R(), rhs, false);
	  gtsam::print(soln, "back-substitution solution: ");
	  return soln;
	} else
	  return backSubstituteUpper(get_R(), rhs, false);
}

/* ************************************************************************* */
Vector GaussianConditional::solve(const Permuted<VectorValues>& x) const {
  Vector rhs(get_d());
  for (const_iterator parent = beginParents(); parent != endParents(); ++parent) {
  	rhs += -get_S(parent) * x[*parent];
//    ublas::axpy_prod(-get_S(parent), x[*parent], rhs, false);
  }
  return backSubstituteUpper(get_R(), rhs, false);
}

}

