# Install script for directory: /home/xxiao/gtsam/gtsam/slam

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtsam/slam" TYPE FILE FILES
    "/home/xxiao/gtsam/gtsam/slam/AntiFactor.h"
    "/home/xxiao/gtsam/gtsam/slam/BearingFactor.h"
    "/home/xxiao/gtsam/gtsam/slam/BearingRangeFactor.h"
    "/home/xxiao/gtsam/gtsam/slam/BetweenFactor.h"
    "/home/xxiao/gtsam/gtsam/slam/BoundingConstraint.h"
    "/home/xxiao/gtsam/gtsam/slam/EssentialMatrixConstraint.h"
    "/home/xxiao/gtsam/gtsam/slam/EssentialMatrixFactor.h"
    "/home/xxiao/gtsam/gtsam/slam/FrobeniusFactor.h"
    "/home/xxiao/gtsam/gtsam/slam/GeneralSFMFactor.h"
    "/home/xxiao/gtsam/gtsam/slam/InitializePose.h"
    "/home/xxiao/gtsam/gtsam/slam/InitializePose3.h"
    "/home/xxiao/gtsam/gtsam/slam/JacobianFactorQ.h"
    "/home/xxiao/gtsam/gtsam/slam/JacobianFactorQR.h"
    "/home/xxiao/gtsam/gtsam/slam/JacobianFactorSVD.h"
    "/home/xxiao/gtsam/gtsam/slam/KarcherMeanFactor-inl.h"
    "/home/xxiao/gtsam/gtsam/slam/KarcherMeanFactor.h"
    "/home/xxiao/gtsam/gtsam/slam/OrientedPlane3Factor.h"
    "/home/xxiao/gtsam/gtsam/slam/PoseRotationPrior.h"
    "/home/xxiao/gtsam/gtsam/slam/PoseTranslationPrior.h"
    "/home/xxiao/gtsam/gtsam/slam/PriorFactor.h"
    "/home/xxiao/gtsam/gtsam/slam/ProjectionFactor.h"
    "/home/xxiao/gtsam/gtsam/slam/RangeFactor.h"
    "/home/xxiao/gtsam/gtsam/slam/ReferenceFrameFactor.h"
    "/home/xxiao/gtsam/gtsam/slam/RegularImplicitSchurFactor.h"
    "/home/xxiao/gtsam/gtsam/slam/RotateFactor.h"
    "/home/xxiao/gtsam/gtsam/slam/SmartFactorBase.h"
    "/home/xxiao/gtsam/gtsam/slam/SmartFactorParams.h"
    "/home/xxiao/gtsam/gtsam/slam/SmartProjectionFactor.h"
    "/home/xxiao/gtsam/gtsam/slam/SmartProjectionPoseFactor.h"
    "/home/xxiao/gtsam/gtsam/slam/StereoFactor.h"
    "/home/xxiao/gtsam/gtsam/slam/TriangulationFactor.h"
    "/home/xxiao/gtsam/gtsam/slam/dataset.h"
    "/home/xxiao/gtsam/gtsam/slam/expressions.h"
    "/home/xxiao/gtsam/gtsam/slam/lago.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/xxiao/gtsam/cmake-build-debug/gtsam/slam/tests/cmake_install.cmake")

endif()

