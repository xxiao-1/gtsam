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
include examples/CMakeFiles/ISAM2Example_SmartFactor.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/ISAM2Example_SmartFactor.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/ISAM2Example_SmartFactor.dir/flags.make

examples/CMakeFiles/ISAM2Example_SmartFactor.dir/ISAM2Example_SmartFactor.cpp.o: examples/CMakeFiles/ISAM2Example_SmartFactor.dir/flags.make
examples/CMakeFiles/ISAM2Example_SmartFactor.dir/ISAM2Example_SmartFactor.cpp.o: ../examples/ISAM2Example_SmartFactor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xxiao/gtsam/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/ISAM2Example_SmartFactor.dir/ISAM2Example_SmartFactor.cpp.o"
	cd /home/xxiao/gtsam/cmake-build-debug/examples && /usr/bin/c++  $(CXX_DEFINES) -DTOPSRCDIR=\"/home/xxiao/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ISAM2Example_SmartFactor.dir/ISAM2Example_SmartFactor.cpp.o -c /home/xxiao/gtsam/examples/ISAM2Example_SmartFactor.cpp

examples/CMakeFiles/ISAM2Example_SmartFactor.dir/ISAM2Example_SmartFactor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ISAM2Example_SmartFactor.dir/ISAM2Example_SmartFactor.cpp.i"
	cd /home/xxiao/gtsam/cmake-build-debug/examples && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/xxiao/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xxiao/gtsam/examples/ISAM2Example_SmartFactor.cpp > CMakeFiles/ISAM2Example_SmartFactor.dir/ISAM2Example_SmartFactor.cpp.i

examples/CMakeFiles/ISAM2Example_SmartFactor.dir/ISAM2Example_SmartFactor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ISAM2Example_SmartFactor.dir/ISAM2Example_SmartFactor.cpp.s"
	cd /home/xxiao/gtsam/cmake-build-debug/examples && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/xxiao/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xxiao/gtsam/examples/ISAM2Example_SmartFactor.cpp -o CMakeFiles/ISAM2Example_SmartFactor.dir/ISAM2Example_SmartFactor.cpp.s

# Object files for target ISAM2Example_SmartFactor
ISAM2Example_SmartFactor_OBJECTS = \
"CMakeFiles/ISAM2Example_SmartFactor.dir/ISAM2Example_SmartFactor.cpp.o"

# External object files for target ISAM2Example_SmartFactor
ISAM2Example_SmartFactor_EXTERNAL_OBJECTS =

examples/ISAM2Example_SmartFactor: examples/CMakeFiles/ISAM2Example_SmartFactor.dir/ISAM2Example_SmartFactor.cpp.o
examples/ISAM2Example_SmartFactor: examples/CMakeFiles/ISAM2Example_SmartFactor.dir/build.make
examples/ISAM2Example_SmartFactor: gtsam/libgtsamDebug.so.4.1.0
examples/ISAM2Example_SmartFactor: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
examples/ISAM2Example_SmartFactor: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
examples/ISAM2Example_SmartFactor: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
examples/ISAM2Example_SmartFactor: /usr/lib/x86_64-linux-gnu/libboost_thread.so
examples/ISAM2Example_SmartFactor: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
examples/ISAM2Example_SmartFactor: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
examples/ISAM2Example_SmartFactor: /usr/lib/x86_64-linux-gnu/libboost_regex.so
examples/ISAM2Example_SmartFactor: /usr/lib/x86_64-linux-gnu/libboost_timer.so
examples/ISAM2Example_SmartFactor: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
examples/ISAM2Example_SmartFactor: /usr/lib/x86_64-linux-gnu/libboost_system.so
examples/ISAM2Example_SmartFactor: gtsam/3rdparty/metis/libmetis/libmetis-gtsamDebug.so
examples/ISAM2Example_SmartFactor: examples/CMakeFiles/ISAM2Example_SmartFactor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xxiao/gtsam/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ISAM2Example_SmartFactor"
	cd /home/xxiao/gtsam/cmake-build-debug/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ISAM2Example_SmartFactor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/ISAM2Example_SmartFactor.dir/build: examples/ISAM2Example_SmartFactor

.PHONY : examples/CMakeFiles/ISAM2Example_SmartFactor.dir/build

examples/CMakeFiles/ISAM2Example_SmartFactor.dir/clean:
	cd /home/xxiao/gtsam/cmake-build-debug/examples && $(CMAKE_COMMAND) -P CMakeFiles/ISAM2Example_SmartFactor.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/ISAM2Example_SmartFactor.dir/clean

examples/CMakeFiles/ISAM2Example_SmartFactor.dir/depend:
	cd /home/xxiao/gtsam/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xxiao/gtsam /home/xxiao/gtsam/examples /home/xxiao/gtsam/cmake-build-debug /home/xxiao/gtsam/cmake-build-debug/examples /home/xxiao/gtsam/cmake-build-debug/examples/CMakeFiles/ISAM2Example_SmartFactor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/ISAM2Example_SmartFactor.dir/depend

