# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/clion/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /media/sf_SO2/Advent_of_Code_2023

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/sf_SO2/Advent_of_Code_2023/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Advent_of_Code_2023.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/Advent_of_Code_2023.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Advent_of_Code_2023.dir/flags.make

CMakeFiles/Advent_of_Code_2023.dir/day1.c.o: CMakeFiles/Advent_of_Code_2023.dir/flags.make
CMakeFiles/Advent_of_Code_2023.dir/day1.c.o: ../day1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/sf_SO2/Advent_of_Code_2023/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Advent_of_Code_2023.dir/day1.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Advent_of_Code_2023.dir/day1.c.o -c /media/sf_SO2/Advent_of_Code_2023/day1.c

CMakeFiles/Advent_of_Code_2023.dir/day1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Advent_of_Code_2023.dir/day1.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/sf_SO2/Advent_of_Code_2023/day1.c > CMakeFiles/Advent_of_Code_2023.dir/day1.c.i

CMakeFiles/Advent_of_Code_2023.dir/day1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Advent_of_Code_2023.dir/day1.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/sf_SO2/Advent_of_Code_2023/day1.c -o CMakeFiles/Advent_of_Code_2023.dir/day1.c.s

# Object files for target Advent_of_Code_2023
Advent_of_Code_2023_OBJECTS = \
"CMakeFiles/Advent_of_Code_2023.dir/day1.c.o"

# External object files for target Advent_of_Code_2023
Advent_of_Code_2023_EXTERNAL_OBJECTS =

Advent_of_Code_2023: CMakeFiles/Advent_of_Code_2023.dir/day1.c.o
Advent_of_Code_2023: CMakeFiles/Advent_of_Code_2023.dir/build.make
Advent_of_Code_2023: CMakeFiles/Advent_of_Code_2023.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/sf_SO2/Advent_of_Code_2023/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Advent_of_Code_2023"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Advent_of_Code_2023.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Advent_of_Code_2023.dir/build: Advent_of_Code_2023
.PHONY : CMakeFiles/Advent_of_Code_2023.dir/build

CMakeFiles/Advent_of_Code_2023.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Advent_of_Code_2023.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Advent_of_Code_2023.dir/clean

CMakeFiles/Advent_of_Code_2023.dir/depend:
	cd /media/sf_SO2/Advent_of_Code_2023/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_SO2/Advent_of_Code_2023 /media/sf_SO2/Advent_of_Code_2023 /media/sf_SO2/Advent_of_Code_2023/cmake-build-debug /media/sf_SO2/Advent_of_Code_2023/cmake-build-debug /media/sf_SO2/Advent_of_Code_2023/cmake-build-debug/CMakeFiles/Advent_of_Code_2023.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Advent_of_Code_2023.dir/depend

