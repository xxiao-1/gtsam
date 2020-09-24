# Install script for directory: /home/xxiao/gtsam/gtsam_unstable/slam

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtsam_unstable/slam" TYPE FILE FILES
    "/home/xxiao/gtsam/gtsam_unstable/slam/AHRS.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/BetweenFactorEM.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/BiasedGPSFactor.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/DummyFactor.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/EquivInertialNavFactor_GlobalVel.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/EquivInertialNavFactor_GlobalVel_NoBias.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/GaussMarkov1stOrderFactor.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/InertialNavFactor_GlobalVelocity.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/InvDepthFactor3.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/InvDepthFactorVariant1.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/InvDepthFactorVariant2.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/InvDepthFactorVariant3.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/Mechanization_bRn2.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/MultiProjectionFactor.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/PartialPriorFactor.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/PoseBetweenFactor.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/PosePriorFactor.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/PoseToPointFactor.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/ProjectionFactorPPP.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/ProjectionFactorPPPC.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/RelativeElevationFactor.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/SmartRangeFactor.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/SmartStereoProjectionFactor.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/SmartStereoProjectionPoseFactor.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/TOAFactor.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/TSAMFactors.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/TransformBtwRobotsUnaryFactor.h"
    "/home/xxiao/gtsam/gtsam_unstable/slam/TransformBtwRobotsUnaryFactorEM.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/xxiao/gtsam/cmake-build-debug/gtsam_unstable/slam/tests/cmake_install.cmake")

endif()

