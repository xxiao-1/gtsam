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

# Utility rule file for testPendulumFactors.valgrind.

# Include the progress variables for this target.
include gtsam_unstable/dynamics/tests/CMakeFiles/testPendulumFactors.valgrind.dir/progress.make

gtsam_unstable/dynamics/tests/CMakeFiles/testPendulumFactors.valgrind: gtsam_unstable/dynamics/tests/testPendulumFactors
	cd /home/xxiao/gtsam/cmake-build-debug/gtsam_unstable/dynamics/tests && valgrind --error-exitcode=1 /home/xxiao/gtsam/cmake-build-debug/gtsam_unstable/dynamics/tests/testPendulumFactors

testPendulumFactors.valgrind: gtsam_unstable/dynamics/tests/CMakeFiles/testPendulumFactors.valgrind
testPendulumFactors.valgrind: gtsam_unstable/dynamics/tests/CMakeFiles/testPendulumFactors.valgrind.dir/build.make

.PHONY : testPendulumFactors.valgrind

# Rule to build all files generated by this target.
gtsam_unstable/dynamics/tests/CMakeFiles/testPendulumFactors.valgrind.dir/build: testPendulumFactors.valgrind

.PHONY : gtsam_unstable/dynamics/tests/CMakeFiles/testPendulumFactors.valgrind.dir/build

gtsam_unstable/dynamics/tests/CMakeFiles/testPendulumFactors.valgrind.dir/clean:
	cd /home/xxiao/gtsam/cmake-build-debug/gtsam_unstable/dynamics/tests && $(CMAKE_COMMAND) -P CMakeFiles/testPendulumFactors.valgrind.dir/cmake_clean.cmake
.PHONY : gtsam_unstable/dynamics/tests/CMakeFiles/testPendulumFactors.valgrind.dir/clean

gtsam_unstable/dynamics/tests/CMakeFiles/testPendulumFactors.valgrind.dir/depend:
	cd /home/xxiao/gtsam/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xxiao/gtsam /home/xxiao/gtsam/gtsam_unstable/dynamics/tests /home/xxiao/gtsam/cmake-build-debug /home/xxiao/gtsam/cmake-build-debug/gtsam_unstable/dynamics/tests /home/xxiao/gtsam/cmake-build-debug/gtsam_unstable/dynamics/tests/CMakeFiles/testPendulumFactors.valgrind.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gtsam_unstable/dynamics/tests/CMakeFiles/testPendulumFactors.valgrind.dir/depend

