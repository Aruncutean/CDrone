# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/raul/Desktop/con/tmp/tmp.o69bV00YFw

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/raul/Desktop/con/tmp/tmp.o69bV00YFw/cmake-build-debug-remote-host

# Include any dependencies generated for this target.
include CMakeFiles/untitled3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/untitled3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/untitled3.dir/flags.make

CMakeFiles/untitled3.dir/main.cpp.o: CMakeFiles/untitled3.dir/flags.make
CMakeFiles/untitled3.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raul/Desktop/con/tmp/tmp.o69bV00YFw/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/untitled3.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/untitled3.dir/main.cpp.o -c /home/raul/Desktop/con/tmp/tmp.o69bV00YFw/main.cpp

CMakeFiles/untitled3.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/untitled3.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raul/Desktop/con/tmp/tmp.o69bV00YFw/main.cpp > CMakeFiles/untitled3.dir/main.cpp.i

CMakeFiles/untitled3.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/untitled3.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raul/Desktop/con/tmp/tmp.o69bV00YFw/main.cpp -o CMakeFiles/untitled3.dir/main.cpp.s

# Object files for target untitled3
untitled3_OBJECTS = \
"CMakeFiles/untitled3.dir/main.cpp.o"

# External object files for target untitled3
untitled3_EXTERNAL_OBJECTS =

untitled3: CMakeFiles/untitled3.dir/main.cpp.o
untitled3: CMakeFiles/untitled3.dir/build.make
untitled3: RadioLib/libRadioLib.a
untitled3: CMakeFiles/untitled3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/raul/Desktop/con/tmp/tmp.o69bV00YFw/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable untitled3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/untitled3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/untitled3.dir/build: untitled3

.PHONY : CMakeFiles/untitled3.dir/build

CMakeFiles/untitled3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/untitled3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/untitled3.dir/clean

CMakeFiles/untitled3.dir/depend:
	cd /home/raul/Desktop/con/tmp/tmp.o69bV00YFw/cmake-build-debug-remote-host && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/raul/Desktop/con/tmp/tmp.o69bV00YFw /home/raul/Desktop/con/tmp/tmp.o69bV00YFw /home/raul/Desktop/con/tmp/tmp.o69bV00YFw/cmake-build-debug-remote-host /home/raul/Desktop/con/tmp/tmp.o69bV00YFw/cmake-build-debug-remote-host /home/raul/Desktop/con/tmp/tmp.o69bV00YFw/cmake-build-debug-remote-host/CMakeFiles/untitled3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/untitled3.dir/depend

