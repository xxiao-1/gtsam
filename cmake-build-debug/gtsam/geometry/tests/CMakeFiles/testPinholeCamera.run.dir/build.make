# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/xxiao/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/202.6397.106/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/xxiao/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/202.6397.106/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xxiao/gtsam

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xxiao/gtsam/cmake-build-debug

# Utility rule file for testPinholeCamera.run.

# Include the progress variables for this target.
include gtsam/geometry/tests/CMakeFiles/testPinholeCamera.run.dir/progress.make

gtsam/geometry/tests/CMakeFiles/testPinholeCamera.run: gtsam/geometry/tests/testPinholeCamera
	cd /home/xxiao/gtsam/cmake-build-debug/gtsam/geometry/tests && ./testPinholeCamera

testPinholeCamera.run: gtsam/geometry/tests/CMakeFiles/testPinholeCamera.run
testPinholeCamera.run: gtsam/geometry/tests/CMakeFiles/testPinholeCamera.run.dir/build.make

.PHONY : testPinholeCamera.run

# Rule to build all files generated by this target.
gtsam/geometry/tests/CMakeFiles/testPinholeCamera.run.dir/build: testPinholeCamera.run

.PHONY : gtsam/geometry/tests/CMakeFiles/testPinholeCamera.run.dir/build

gtsam/geometry/tests/CMakeFiles/testPinholeCamera.run.dir/clean:
	cd /home/xxiao/gtsam/cmake-build-debug/gtsam/geometry/tests && $(CMAKE_COMMAND) -P CMakeFiles/testPinholeCamera.run.dir/cmake_clean.cmake
.PHONY : gtsam/geometry/tests/CMakeFiles/testPinholeCamera.run.dir/clean

gtsam/geometry/tests/CMakeFiles/testPinholeCamera.run.dir/depend:
	cd /home/xxiao/gtsam/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xxiao/gtsam /home/xxiao/gtsam/gtsam/geometry/tests /home/xxiao/gtsam/cmake-build-debug /home/xxiao/gtsam/cmake-build-debug/gtsam/geometry/tests /home/xxiao/gtsam/cmake-build-debug/gtsam/geometry/tests/CMakeFiles/testPinholeCamera.run.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gtsam/geometry/tests/CMakeFiles/testPinholeCamera.run.dir/depend

