# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/paaddy/libsumo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paaddy/libsumo/build

# Include any dependencies generated for this target.
include CMakeFiles/test_sumo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_sumo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_sumo.dir/flags.make

CMakeFiles/test_sumo.dir/test/test.cpp.o: CMakeFiles/test_sumo.dir/flags.make
CMakeFiles/test_sumo.dir/test/test.cpp.o: ../test/test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/paaddy/libsumo/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test_sumo.dir/test/test.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test_sumo.dir/test/test.cpp.o -c /home/paaddy/libsumo/test/test.cpp

CMakeFiles/test_sumo.dir/test/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_sumo.dir/test/test.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/paaddy/libsumo/test/test.cpp > CMakeFiles/test_sumo.dir/test/test.cpp.i

CMakeFiles/test_sumo.dir/test/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_sumo.dir/test/test.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/paaddy/libsumo/test/test.cpp -o CMakeFiles/test_sumo.dir/test/test.cpp.s

CMakeFiles/test_sumo.dir/test/test.cpp.o.requires:
.PHONY : CMakeFiles/test_sumo.dir/test/test.cpp.o.requires

CMakeFiles/test_sumo.dir/test/test.cpp.o.provides: CMakeFiles/test_sumo.dir/test/test.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_sumo.dir/build.make CMakeFiles/test_sumo.dir/test/test.cpp.o.provides.build
.PHONY : CMakeFiles/test_sumo.dir/test/test.cpp.o.provides

CMakeFiles/test_sumo.dir/test/test.cpp.o.provides.build: CMakeFiles/test_sumo.dir/test/test.cpp.o

# Object files for target test_sumo
test_sumo_OBJECTS = \
"CMakeFiles/test_sumo.dir/test/test.cpp.o"

# External object files for target test_sumo
test_sumo_EXTERNAL_OBJECTS =

test_sumo: CMakeFiles/test_sumo.dir/test/test.cpp.o
test_sumo: CMakeFiles/test_sumo.dir/build.make
test_sumo: libsumo.a
test_sumo: /usr/lib/x86_64-linux-gnu/librt.so
test_sumo: CMakeFiles/test_sumo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable test_sumo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_sumo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_sumo.dir/build: test_sumo
.PHONY : CMakeFiles/test_sumo.dir/build

CMakeFiles/test_sumo.dir/requires: CMakeFiles/test_sumo.dir/test/test.cpp.o.requires
.PHONY : CMakeFiles/test_sumo.dir/requires

CMakeFiles/test_sumo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_sumo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_sumo.dir/clean

CMakeFiles/test_sumo.dir/depend:
	cd /home/paaddy/libsumo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paaddy/libsumo /home/paaddy/libsumo /home/paaddy/libsumo/build /home/paaddy/libsumo/build /home/paaddy/libsumo/build/CMakeFiles/test_sumo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_sumo.dir/depend

