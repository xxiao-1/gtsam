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
include tests/CMakeFiles/testNonlinearFactorGraph.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/testNonlinearFactorGraph.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/testNonlinearFactorGraph.dir/flags.make

tests/CMakeFiles/testNonlinearFactorGraph.dir/testNonlinearFactorGraph.cpp.o: tests/CMakeFiles/testNonlinearFactorGraph.dir/flags.make
tests/CMakeFiles/testNonlinearFactorGraph.dir/testNonlinearFactorGraph.cpp.o: ../tests/testNonlinearFactorGraph.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xxiao/gtsam/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/testNonlinearFactorGraph.dir/testNonlinearFactorGraph.cpp.o"
	cd /home/xxiao/gtsam/cmake-build-debug/tests && /usr/bin/c++  $(CXX_DEFINES) -DTOPSRCDIR=\"/home/xxiao/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testNonlinearFactorGraph.dir/testNonlinearFactorGraph.cpp.o -c /home/xxiao/gtsam/tests/testNonlinearFactorGraph.cpp

tests/CMakeFiles/testNonlinearFactorGraph.dir/testNonlinearFactorGraph.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testNonlinearFactorGraph.dir/testNonlinearFactorGraph.cpp.i"
	cd /home/xxiao/gtsam/cmake-build-debug/tests && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/xxiao/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xxiao/gtsam/tests/testNonlinearFactorGraph.cpp > CMakeFiles/testNonlinearFactorGraph.dir/testNonlinearFactorGraph.cpp.i

tests/CMakeFiles/testNonlinearFactorGraph.dir/testNonlinearFactorGraph.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testNonlinearFactorGraph.dir/testNonlinearFactorGraph.cpp.s"
	cd /home/xxiao/gtsam/cmake-build-debug/tests && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/xxiao/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xxiao/gtsam/tests/testNonlinearFactorGraph.cpp -o CMakeFiles/testNonlinearFactorGraph.dir/testNonlinearFactorGraph.cpp.s

# Object files for target testNonlinearFactorGraph
testNonlinearFactorGraph_OBJECTS = \
"CMakeFiles/testNonlinearFactorGraph.dir/testNonlinearFactorGraph.cpp.o"

# External object files for target testNonlinearFactorGraph
testNonlinearFactorGraph_EXTERNAL_OBJECTS =

tests/testNonlinearFactorGraph: tests/CMakeFiles/testNonlinearFactorGraph.dir/testNonlinearFactorGraph.cpp.o
tests/testNonlinearFactorGraph: tests/CMakeFiles/testNonlinearFactorGraph.dir/build.make
tests/testNonlinearFactorGraph: CppUnitLite/libCppUnitLiteDebug.a
tests/testNonlinearFactorGraph: gtsam/libgtsamDebug.so.4.1.0
tests/testNonlinearFactorGraph: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
tests/testNonlinearFactorGraph: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
tests/testNonlinearFactorGraph: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/testNonlinearFactorGraph: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
tests/testNonlinearFactorGraph: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
tests/testNonlinearFactorGraph: /usr/lib/x86_64-linux-gnu/libboost_regex.so
tests/testNonlinearFactorGraph: /usr/lib/x86_64-linux-gnu/libboost_timer.so
tests/testNonlinearFactorGraph: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
tests/testNonlinearFactorGraph: /usr/lib/x86_64-linux-gnu/libboost_system.so
tests/testNonlinearFactorGraph: gtsam/3rdparty/metis/libmetis/libmetis-gtsamDebug.so
tests/testNonlinearFactorGraph: tests/CMakeFiles/testNonlinearFactorGraph.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xxiao/gtsam/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testNonlinearFactorGraph"
	cd /home/xxiao/gtsam/cmake-build-debug/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testNonlinearFactorGraph.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/testNonlinearFactorGraph.dir/build: tests/testNonlinearFactorGraph

.PHONY : tests/CMakeFiles/testNonlinearFactorGraph.dir/build

tests/CMakeFiles/testNonlinearFactorGraph.dir/clean:
	cd /home/xxiao/gtsam/cmake-build-debug/tests && $(CMAKE_COMMAND) -P CMakeFiles/testNonlinearFactorGraph.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/testNonlinearFactorGraph.dir/clean

tests/CMakeFiles/testNonlinearFactorGraph.dir/depend:
	cd /home/xxiao/gtsam/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xxiao/gtsam /home/xxiao/gtsam/tests /home/xxiao/gtsam/cmake-build-debug /home/xxiao/gtsam/cmake-build-debug/tests /home/xxiao/gtsam/cmake-build-debug/tests/CMakeFiles/testNonlinearFactorGraph.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/testNonlinearFactorGraph.dir/depend

