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

# Include any dependencies generated for this target.
include tests/CMakeFiles/testPCGSolver.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/testPCGSolver.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/testPCGSolver.dir/flags.make

tests/CMakeFiles/testPCGSolver.dir/testPCGSolver.cpp.o: tests/CMakeFiles/testPCGSolver.dir/flags.make
tests/CMakeFiles/testPCGSolver.dir/testPCGSolver.cpp.o: ../tests/testPCGSolver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xxiao/gtsam/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/testPCGSolver.dir/testPCGSolver.cpp.o"
	cd /home/xxiao/gtsam/cmake-build-debug/tests && /usr/bin/c++  $(CXX_DEFINES) -DTOPSRCDIR=\"/home/xxiao/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testPCGSolver.dir/testPCGSolver.cpp.o -c /home/xxiao/gtsam/tests/testPCGSolver.cpp

tests/CMakeFiles/testPCGSolver.dir/testPCGSolver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testPCGSolver.dir/testPCGSolver.cpp.i"
	cd /home/xxiao/gtsam/cmake-build-debug/tests && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/xxiao/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xxiao/gtsam/tests/testPCGSolver.cpp > CMakeFiles/testPCGSolver.dir/testPCGSolver.cpp.i

tests/CMakeFiles/testPCGSolver.dir/testPCGSolver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testPCGSolver.dir/testPCGSolver.cpp.s"
	cd /home/xxiao/gtsam/cmake-build-debug/tests && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/xxiao/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xxiao/gtsam/tests/testPCGSolver.cpp -o CMakeFiles/testPCGSolver.dir/testPCGSolver.cpp.s

# Object files for target testPCGSolver
testPCGSolver_OBJECTS = \
"CMakeFiles/testPCGSolver.dir/testPCGSolver.cpp.o"

# External object files for target testPCGSolver
testPCGSolver_EXTERNAL_OBJECTS =

tests/testPCGSolver: tests/CMakeFiles/testPCGSolver.dir/testPCGSolver.cpp.o
tests/testPCGSolver: tests/CMakeFiles/testPCGSolver.dir/build.make
tests/testPCGSolver: CppUnitLite/libCppUnitLiteDebug.a
tests/testPCGSolver: gtsam/libgtsamDebug.so.4.1.0
tests/testPCGSolver: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
tests/testPCGSolver: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
tests/testPCGSolver: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/testPCGSolver: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
tests/testPCGSolver: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
tests/testPCGSolver: /usr/lib/x86_64-linux-gnu/libboost_regex.so
tests/testPCGSolver: /usr/lib/x86_64-linux-gnu/libboost_timer.so
tests/testPCGSolver: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
tests/testPCGSolver: /usr/lib/x86_64-linux-gnu/libboost_system.so
tests/testPCGSolver: gtsam/3rdparty/metis/libmetis/libmetis-gtsamDebug.so
tests/testPCGSolver: tests/CMakeFiles/testPCGSolver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xxiao/gtsam/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testPCGSolver"
	cd /home/xxiao/gtsam/cmake-build-debug/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testPCGSolver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/testPCGSolver.dir/build: tests/testPCGSolver

.PHONY : tests/CMakeFiles/testPCGSolver.dir/build

tests/CMakeFiles/testPCGSolver.dir/clean:
	cd /home/xxiao/gtsam/cmake-build-debug/tests && $(CMAKE_COMMAND) -P CMakeFiles/testPCGSolver.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/testPCGSolver.dir/clean

tests/CMakeFiles/testPCGSolver.dir/depend:
	cd /home/xxiao/gtsam/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xxiao/gtsam /home/xxiao/gtsam/tests /home/xxiao/gtsam/cmake-build-debug /home/xxiao/gtsam/cmake-build-debug/tests /home/xxiao/gtsam/cmake-build-debug/tests/CMakeFiles/testPCGSolver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/testPCGSolver.dir/depend

