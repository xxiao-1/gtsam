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

# Utility rule file for testRot3.valgrind.

# Include the progress variables for this target.
include gtsam/geometry/tests/CMakeFiles/testRot3.valgrind.dir/progress.make

gtsam/geometry/tests/CMakeFiles/testRot3.valgrind: gtsam/geometry/tests/testRot3
	cd /home/xxiao/gtsam/cmake-build-debug/gtsam/geometry/tests && valgrind --error-exitcode=1 /home/xxiao/gtsam/cmake-build-debug/gtsam/geometry/tests/testRot3

testRot3.valgrind: gtsam/geometry/tests/CMakeFiles/testRot3.valgrind
testRot3.valgrind: gtsam/geometry/tests/CMakeFiles/testRot3.valgrind.dir/build.make

.PHONY : testRot3.valgrind

# Rule to build all files generated by this target.
gtsam/geometry/tests/CMakeFiles/testRot3.valgrind.dir/build: testRot3.valgrind

.PHONY : gtsam/geometry/tests/CMakeFiles/testRot3.valgrind.dir/build

gtsam/geometry/tests/CMakeFiles/testRot3.valgrind.dir/clean:
	cd /home/xxiao/gtsam/cmake-build-debug/gtsam/geometry/tests && $(CMAKE_COMMAND) -P CMakeFiles/testRot3.valgrind.dir/cmake_clean.cmake
.PHONY : gtsam/geometry/tests/CMakeFiles/testRot3.valgrind.dir/clean

gtsam/geometry/tests/CMakeFiles/testRot3.valgrind.dir/depend:
	cd /home/xxiao/gtsam/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xxiao/gtsam /home/xxiao/gtsam/gtsam/geometry/tests /home/xxiao/gtsam/cmake-build-debug /home/xxiao/gtsam/cmake-build-debug/gtsam/geometry/tests /home/xxiao/gtsam/cmake-build-debug/gtsam/geometry/tests/CMakeFiles/testRot3.valgrind.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gtsam/geometry/tests/CMakeFiles/testRot3.valgrind.dir/depend

