# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/scara/Cooperating-Robots/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/scara/Cooperating-Robots/catkin_ws/build

# Include any dependencies generated for this target.
include gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/depend.make

# Include the progress variables for this target.
include gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/progress.make

# Include the compile flags for this target's objects.
include gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/flags.make

gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/flags.make
gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: /usr/src/googletest/googletest/src/gtest_main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/scara/Cooperating-Robots/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"
	cd /home/scara/Cooperating-Robots/catkin_ws/build/gtest/googlemock/gtest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.o -c /usr/src/googletest/googletest/src/gtest_main.cc

gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest_main.dir/src/gtest_main.cc.i"
	cd /home/scara/Cooperating-Robots/catkin_ws/build/gtest/googlemock/gtest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/src/googletest/googletest/src/gtest_main.cc > CMakeFiles/gtest_main.dir/src/gtest_main.cc.i

gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest_main.dir/src/gtest_main.cc.s"
	cd /home/scara/Cooperating-Robots/catkin_ws/build/gtest/googlemock/gtest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/src/googletest/googletest/src/gtest_main.cc -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.s

gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires:

.PHONY : gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires

gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides: gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires
	$(MAKE) -f gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/build.make gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides.build
.PHONY : gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides

gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides.build: gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o


# Object files for target gtest_main
gtest_main_OBJECTS = \
"CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"

# External object files for target gtest_main
gtest_main_EXTERNAL_OBJECTS =

gtest/googlemock/gtest/libgtest_main.so: gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o
gtest/googlemock/gtest/libgtest_main.so: gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/build.make
gtest/googlemock/gtest/libgtest_main.so: gtest/googlemock/gtest/libgtest.so
gtest/googlemock/gtest/libgtest_main.so: gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/scara/Cooperating-Robots/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libgtest_main.so"
	cd /home/scara/Cooperating-Robots/catkin_ws/build/gtest/googlemock/gtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/build: gtest/googlemock/gtest/libgtest_main.so

.PHONY : gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/build

gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/requires: gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires

.PHONY : gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/requires

gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/clean:
	cd /home/scara/Cooperating-Robots/catkin_ws/build/gtest/googlemock/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean.cmake
.PHONY : gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/clean

gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/depend:
	cd /home/scara/Cooperating-Robots/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/scara/Cooperating-Robots/catkin_ws/src /usr/src/googletest/googletest /home/scara/Cooperating-Robots/catkin_ws/build /home/scara/Cooperating-Robots/catkin_ws/build/gtest/googlemock/gtest /home/scara/Cooperating-Robots/catkin_ws/build/gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gtest/googlemock/gtest/CMakeFiles/gtest_main.dir/depend
