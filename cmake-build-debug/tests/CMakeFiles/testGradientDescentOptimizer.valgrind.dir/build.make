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

# Utility rule file for testGradientDescentOptimizer.valgrind.

# Include the progress variables for this target.
include tests/CMakeFiles/testGradientDescentOptimizer.valgrind.dir/progress.make

tests/CMakeFiles/testGradientDescentOptimizer.valgrind: tests/testGradientDescentOptimizer
	cd /home/xxiao/gtsam/cmake-build-debug/tests && valgrind --error-exitcode=1 /home/xxiao/gtsam/cmake-build-debug/tests/testGradientDescentOptimizer

testGradientDescentOptimizer.valgrind: tests/CMakeFiles/testGradientDescentOptimizer.valgrind
testGradientDescentOptimizer.valgrind: tests/CMakeFiles/testGradientDescentOptimizer.valgrind.dir/build.make

.PHONY : testGradientDescentOptimizer.valgrind

# Rule to build all files generated by this target.
tests/CMakeFiles/testGradientDescentOptimizer.valgrind.dir/build: testGradientDescentOptimizer.valgrind

.PHONY : tests/CMakeFiles/testGradientDescentOptimizer.valgrind.dir/build

tests/CMakeFiles/testGradientDescentOptimizer.valgrind.dir/clean:
	cd /home/xxiao/gtsam/cmake-build-debug/tests && $(CMAKE_COMMAND) -P CMakeFiles/testGradientDescentOptimizer.valgrind.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/testGradientDescentOptimizer.valgrind.dir/clean

tests/CMakeFiles/testGradientDescentOptimizer.valgrind.dir/depend:
	cd /home/xxiao/gtsam/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xxiao/gtsam /home/xxiao/gtsam/tests /home/xxiao/gtsam/cmake-build-debug /home/xxiao/gtsam/cmake-build-debug/tests /home/xxiao/gtsam/cmake-build-debug/tests/CMakeFiles/testGradientDescentOptimizer.valgrind.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/testGradientDescentOptimizer.valgrind.dir/depend

