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
include examples/CMakeFiles/VisualISAMExample.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/VisualISAMExample.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/VisualISAMExample.dir/flags.make

examples/CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.o: examples/CMakeFiles/VisualISAMExample.dir/flags.make
examples/CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.o: ../examples/VisualISAMExample.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xxiao/gtsam/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.o"
	cd /home/xxiao/gtsam/cmake-build-debug/examples && /usr/bin/c++  $(CXX_DEFINES) -DTOPSRCDIR=\"/home/xxiao/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.o -c /home/xxiao/gtsam/examples/VisualISAMExample.cpp

examples/CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.i"
	cd /home/xxiao/gtsam/cmake-build-debug/examples && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/xxiao/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xxiao/gtsam/examples/VisualISAMExample.cpp > CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.i

examples/CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.s"
	cd /home/xxiao/gtsam/cmake-build-debug/examples && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/xxiao/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xxiao/gtsam/examples/VisualISAMExample.cpp -o CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.s

# Object files for target VisualISAMExample
VisualISAMExample_OBJECTS = \
"CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.o"

# External object files for target VisualISAMExample
VisualISAMExample_EXTERNAL_OBJECTS =

examples/VisualISAMExample: examples/CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.o
examples/VisualISAMExample: examples/CMakeFiles/VisualISAMExample.dir/build.make
examples/VisualISAMExample: gtsam/libgtsamDebug.so.4.1.0
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_thread.so
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_regex.so
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_timer.so
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_system.so
examples/VisualISAMExample: gtsam/3rdparty/metis/libmetis/libmetis-gtsamDebug.so
examples/VisualISAMExample: examples/CMakeFiles/VisualISAMExample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xxiao/gtsam/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable VisualISAMExample"
	cd /home/xxiao/gtsam/cmake-build-debug/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VisualISAMExample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/VisualISAMExample.dir/build: examples/VisualISAMExample

.PHONY : examples/CMakeFiles/VisualISAMExample.dir/build

examples/CMakeFiles/VisualISAMExample.dir/clean:
	cd /home/xxiao/gtsam/cmake-build-debug/examples && $(CMAKE_COMMAND) -P CMakeFiles/VisualISAMExample.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/VisualISAMExample.dir/clean

examples/CMakeFiles/VisualISAMExample.dir/depend:
	cd /home/xxiao/gtsam/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xxiao/gtsam /home/xxiao/gtsam/examples /home/xxiao/gtsam/cmake-build-debug /home/xxiao/gtsam/cmake-build-debug/examples /home/xxiao/gtsam/cmake-build-debug/examples/CMakeFiles/VisualISAMExample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/VisualISAMExample.dir/depend

