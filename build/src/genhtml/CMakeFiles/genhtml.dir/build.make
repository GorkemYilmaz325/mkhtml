# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/mehmetmertgunduz/Projects/mkhtml

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mehmetmertgunduz/Projects/mkhtml/build

# Include any dependencies generated for this target.
include src/genhtml/CMakeFiles/genhtml.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/genhtml/CMakeFiles/genhtml.dir/compiler_depend.make

# Include the progress variables for this target.
include src/genhtml/CMakeFiles/genhtml.dir/progress.make

# Include the compile flags for this target's objects.
include src/genhtml/CMakeFiles/genhtml.dir/flags.make

src/genhtml/CMakeFiles/genhtml.dir/createHtml.c.o: src/genhtml/CMakeFiles/genhtml.dir/flags.make
src/genhtml/CMakeFiles/genhtml.dir/createHtml.c.o: ../src/genhtml/createHtml.c
src/genhtml/CMakeFiles/genhtml.dir/createHtml.c.o: src/genhtml/CMakeFiles/genhtml.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mehmetmertgunduz/Projects/mkhtml/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/genhtml/CMakeFiles/genhtml.dir/createHtml.c.o"
	cd /home/mehmetmertgunduz/Projects/mkhtml/build/src/genhtml && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/genhtml/CMakeFiles/genhtml.dir/createHtml.c.o -MF CMakeFiles/genhtml.dir/createHtml.c.o.d -o CMakeFiles/genhtml.dir/createHtml.c.o -c /home/mehmetmertgunduz/Projects/mkhtml/src/genhtml/createHtml.c

src/genhtml/CMakeFiles/genhtml.dir/createHtml.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/genhtml.dir/createHtml.c.i"
	cd /home/mehmetmertgunduz/Projects/mkhtml/build/src/genhtml && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mehmetmertgunduz/Projects/mkhtml/src/genhtml/createHtml.c > CMakeFiles/genhtml.dir/createHtml.c.i

src/genhtml/CMakeFiles/genhtml.dir/createHtml.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/genhtml.dir/createHtml.c.s"
	cd /home/mehmetmertgunduz/Projects/mkhtml/build/src/genhtml && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mehmetmertgunduz/Projects/mkhtml/src/genhtml/createHtml.c -o CMakeFiles/genhtml.dir/createHtml.c.s

# Object files for target genhtml
genhtml_OBJECTS = \
"CMakeFiles/genhtml.dir/createHtml.c.o"

# External object files for target genhtml
genhtml_EXTERNAL_OBJECTS =

src/genhtml/libgenhtml.a: src/genhtml/CMakeFiles/genhtml.dir/createHtml.c.o
src/genhtml/libgenhtml.a: src/genhtml/CMakeFiles/genhtml.dir/build.make
src/genhtml/libgenhtml.a: src/genhtml/CMakeFiles/genhtml.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mehmetmertgunduz/Projects/mkhtml/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libgenhtml.a"
	cd /home/mehmetmertgunduz/Projects/mkhtml/build/src/genhtml && $(CMAKE_COMMAND) -P CMakeFiles/genhtml.dir/cmake_clean_target.cmake
	cd /home/mehmetmertgunduz/Projects/mkhtml/build/src/genhtml && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/genhtml.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/genhtml/CMakeFiles/genhtml.dir/build: src/genhtml/libgenhtml.a
.PHONY : src/genhtml/CMakeFiles/genhtml.dir/build

src/genhtml/CMakeFiles/genhtml.dir/clean:
	cd /home/mehmetmertgunduz/Projects/mkhtml/build/src/genhtml && $(CMAKE_COMMAND) -P CMakeFiles/genhtml.dir/cmake_clean.cmake
.PHONY : src/genhtml/CMakeFiles/genhtml.dir/clean

src/genhtml/CMakeFiles/genhtml.dir/depend:
	cd /home/mehmetmertgunduz/Projects/mkhtml/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mehmetmertgunduz/Projects/mkhtml /home/mehmetmertgunduz/Projects/mkhtml/src/genhtml /home/mehmetmertgunduz/Projects/mkhtml/build /home/mehmetmertgunduz/Projects/mkhtml/build/src/genhtml /home/mehmetmertgunduz/Projects/mkhtml/build/src/genhtml/CMakeFiles/genhtml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/genhtml/CMakeFiles/genhtml.dir/depend

