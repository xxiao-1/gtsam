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
include tests/CMakeFiles/testSimulated2D.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/testSimulated2D.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/testSimulated2D.dir/flags.make

tests/CMakeFiles/testSimulated2D.dir/testSimulated2D.cpp.o: tests/CMakeFiles/testSimulated2D.dir/flags.make
tests/CMakeFiles/testSimulated2D.dir/testSimulated2D.cpp.o: ../tests/testSimulated2D.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xxiao/gtsam/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/testSimulated2D.dir/testSimulated2D.cpp.o"
	cd /home/xxiao/gtsam/cmake-build-debug/tests && /usr/bin/c++  $(CXX_DEFINES) -DTOPSRCDIR=\"/home/xxiao/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testSimulated2D.dir/testSimulated2D.cpp.o -c /home/xxiao/gtsam/tests/testSimulated2D.cpp

tests/CMakeFiles/testSimulated2D.dir/testSimulated2D.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testSimulated2D.dir/testSimulated2D.cpp.i"
	cd /home/xxiao/gtsam/cmake-build-debug/tests && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/xxiao/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xxiao/gtsam/tests/testSimulated2D.cpp > CMakeFiles/testSimulated2D.dir/testSimulated2D.cpp.i

tests/CMakeFiles/testSimulated2D.dir/testSimulated2D.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testSimulated2D.dir/testSimulated2D.cpp.s"
	cd /home/xxiao/gtsam/cmake-build-debug/tests && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/xxiao/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xxiao/gtsam/tests/testSimulated2D.cpp -o CMakeFiles/testSimulated2D.dir/testSimulated2D.cpp.s

# Object files for target testSimulated2D
testSimulated2D_OBJECTS = \
"CMakeFiles/testSimulated2D.dir/testSimulated2D.cpp.o"

# External object files for target testSimulated2D
testSimulated2D_EXTERNAL_OBJECTS =

tests/testSimulated2D: tests/CMakeFiles/testSimulated2D.dir/testSimulated2D.cpp.o
tests/testSimulated2D: tests/CMakeFiles/testSimulated2D.dir/build.make
tests/testSimulated2D: CppUnitLite/libCppUnitLiteDebug.a
tests/testSimulated2D: gtsam/libgtsamDebug.so.4.1.0
tests/testSimulated2D: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
tests/testSimulated2D: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
tests/testSimulated2D: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/testSimulated2D: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
tests/testSimulated2D: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
tests/testSimulated2D: /usr/lib/x86_64-linux-gnu/libboost_regex.so
tests/testSimulated2D: /usr/lib/x86_64-linux-gnu/libboost_timer.so
tests/testSimulated2D: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
tests/testSimulated2D: /usr/lib/x86_64-linux-gnu/libboost_system.so
tests/testSimulated2D: gtsam/3rdparty/metis/libmetis/libmetis-gtsamDebug.so
tests/testSimulated2D: tests/CMakeFiles/testSimulated2D.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xxiao/gtsam/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testSimulated2D"
	cd /home/xxiao/gtsam/cmake-build-debug/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testSimulated2D.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/testSimulated2D.dir/build: tests/testSimulated2D

.PHONY : tests/CMakeFiles/testSimulated2D.dir/build

tests/CMakeFiles/testSimulated2D.dir/clean:
	cd /home/xxiao/gtsam/cmake-build-debug/tests && $(CMAKE_COMMAND) -P CMakeFiles/testSimulated2D.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/testSimulated2D.dir/clean

tests/CMakeFiles/testSimulated2D.dir/depend:
	cd /home/xxiao/gtsam/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xxiao/gtsam /home/xxiao/gtsam/tests /home/xxiao/gtsam/cmake-build-debug /home/xxiao/gtsam/cmake-build-debug/tests /home/xxiao/gtsam/cmake-build-debug/tests/CMakeFiles/testSimulated2D.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/testSimulated2D.dir/depend

