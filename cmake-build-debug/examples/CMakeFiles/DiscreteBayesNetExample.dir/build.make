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
include examples/CMakeFiles/DiscreteBayesNetExample.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/DiscreteBayesNetExample.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/DiscreteBayesNetExample.dir/flags.make

examples/CMakeFiles/DiscreteBayesNetExample.dir/DiscreteBayesNetExample.cpp.o: examples/CMakeFiles/DiscreteBayesNetExample.dir/flags.make
examples/CMakeFiles/DiscreteBayesNetExample.dir/DiscreteBayesNetExample.cpp.o: ../examples/DiscreteBayesNetExample.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xxiao/gtsam/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/DiscreteBayesNetExample.dir/DiscreteBayesNetExample.cpp.o"
	cd /home/xxiao/gtsam/cmake-build-debug/examples && /usr/bin/c++  $(CXX_DEFINES) -DTOPSRCDIR=\"/home/xxiao/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DiscreteBayesNetExample.dir/DiscreteBayesNetExample.cpp.o -c /home/xxiao/gtsam/examples/DiscreteBayesNetExample.cpp

examples/CMakeFiles/DiscreteBayesNetExample.dir/DiscreteBayesNetExample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DiscreteBayesNetExample.dir/DiscreteBayesNetExample.cpp.i"
	cd /home/xxiao/gtsam/cmake-build-debug/examples && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/xxiao/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xxiao/gtsam/examples/DiscreteBayesNetExample.cpp > CMakeFiles/DiscreteBayesNetExample.dir/DiscreteBayesNetExample.cpp.i

examples/CMakeFiles/DiscreteBayesNetExample.dir/DiscreteBayesNetExample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DiscreteBayesNetExample.dir/DiscreteBayesNetExample.cpp.s"
	cd /home/xxiao/gtsam/cmake-build-debug/examples && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/xxiao/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xxiao/gtsam/examples/DiscreteBayesNetExample.cpp -o CMakeFiles/DiscreteBayesNetExample.dir/DiscreteBayesNetExample.cpp.s

# Object files for target DiscreteBayesNetExample
DiscreteBayesNetExample_OBJECTS = \
"CMakeFiles/DiscreteBayesNetExample.dir/DiscreteBayesNetExample.cpp.o"

# External object files for target DiscreteBayesNetExample
DiscreteBayesNetExample_EXTERNAL_OBJECTS =

examples/DiscreteBayesNetExample: examples/CMakeFiles/DiscreteBayesNetExample.dir/DiscreteBayesNetExample.cpp.o
examples/DiscreteBayesNetExample: examples/CMakeFiles/DiscreteBayesNetExample.dir/build.make
examples/DiscreteBayesNetExample: gtsam/libgtsamDebug.so.4.1.0
examples/DiscreteBayesNetExample: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
examples/DiscreteBayesNetExample: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
examples/DiscreteBayesNetExample: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
examples/DiscreteBayesNetExample: /usr/lib/x86_64-linux-gnu/libboost_thread.so
examples/DiscreteBayesNetExample: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
examples/DiscreteBayesNetExample: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
examples/DiscreteBayesNetExample: /usr/lib/x86_64-linux-gnu/libboost_regex.so
examples/DiscreteBayesNetExample: /usr/lib/x86_64-linux-gnu/libboost_timer.so
examples/DiscreteBayesNetExample: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
examples/DiscreteBayesNetExample: /usr/lib/x86_64-linux-gnu/libboost_system.so
examples/DiscreteBayesNetExample: gtsam/3rdparty/metis/libmetis/libmetis-gtsamDebug.so
examples/DiscreteBayesNetExample: examples/CMakeFiles/DiscreteBayesNetExample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xxiao/gtsam/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable DiscreteBayesNetExample"
	cd /home/xxiao/gtsam/cmake-build-debug/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DiscreteBayesNetExample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/DiscreteBayesNetExample.dir/build: examples/DiscreteBayesNetExample

.PHONY : examples/CMakeFiles/DiscreteBayesNetExample.dir/build

examples/CMakeFiles/DiscreteBayesNetExample.dir/clean:
	cd /home/xxiao/gtsam/cmake-build-debug/examples && $(CMAKE_COMMAND) -P CMakeFiles/DiscreteBayesNetExample.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/DiscreteBayesNetExample.dir/clean

examples/CMakeFiles/DiscreteBayesNetExample.dir/depend:
	cd /home/xxiao/gtsam/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xxiao/gtsam /home/xxiao/gtsam/examples /home/xxiao/gtsam/cmake-build-debug /home/xxiao/gtsam/cmake-build-debug/examples /home/xxiao/gtsam/cmake-build-debug/examples/CMakeFiles/DiscreteBayesNetExample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/DiscreteBayesNetExample.dir/depend

