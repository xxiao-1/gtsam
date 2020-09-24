# Install script for directory: /home/xxiao/gtsam/gtsam

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtsam" TYPE FILE FILES
    "/home/xxiao/gtsam/gtsam/global_includes.h"
    "/home/xxiao/gtsam/gtsam/precompiled_header.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtsam" TYPE FILE FILES
    "/home/xxiao/gtsam/cmake-build-debug/gtsam/config.h"
    "/home/xxiao/gtsam/cmake-build-debug/gtsam/dllexport.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtsamDebug.so.4.1.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtsamDebug.so.4"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/xxiao/gtsam/cmake-build-debug/gtsam/libgtsamDebug.so.4.1.0"
    "/home/xxiao/gtsam/cmake-build-debug/gtsam/libgtsamDebug.so.4"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtsamDebug.so.4.1.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtsamDebug.so.4"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/xxiao/gtsam/cmake-build-debug/gtsam/3rdparty/metis/libmetis:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtsamDebug.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtsamDebug.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtsamDebug.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/xxiao/gtsam/cmake-build-debug/gtsam/libgtsamDebug.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtsamDebug.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtsamDebug.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtsamDebug.so"
         OLD_RPATH "/home/xxiao/gtsam/cmake-build-debug/gtsam/3rdparty/metis/libmetis:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtsamDebug.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/xxiao/gtsam/cmake-build-debug/gtsam/3rdparty/cmake_install.cmake")
  include("/home/xxiao/gtsam/cmake-build-debug/gtsam/base/cmake_install.cmake")
  include("/home/xxiao/gtsam/cmake-build-debug/gtsam/geometry/cmake_install.cmake")
  include("/home/xxiao/gtsam/cmake-build-debug/gtsam/inference/cmake_install.cmake")
  include("/home/xxiao/gtsam/cmake-build-debug/gtsam/symbolic/cmake_install.cmake")
  include("/home/xxiao/gtsam/cmake-build-debug/gtsam/discrete/cmake_install.cmake")
  include("/home/xxiao/gtsam/cmake-build-debug/gtsam/linear/cmake_install.cmake")
  include("/home/xxiao/gtsam/cmake-build-debug/gtsam/nonlinear/cmake_install.cmake")
  include("/home/xxiao/gtsam/cmake-build-debug/gtsam/sam/cmake_install.cmake")
  include("/home/xxiao/gtsam/cmake-build-debug/gtsam/sfm/cmake_install.cmake")
  include("/home/xxiao/gtsam/cmake-build-debug/gtsam/slam/cmake_install.cmake")
  include("/home/xxiao/gtsam/cmake-build-debug/gtsam/navigation/cmake_install.cmake")

endif()

