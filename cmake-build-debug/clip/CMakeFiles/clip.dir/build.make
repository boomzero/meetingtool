# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/chenqi/CLionProjects/meetingtool

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/chenqi/CLionProjects/meetingtool/cmake-build-debug

# Include any dependencies generated for this target.
include clip/CMakeFiles/clip.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include clip/CMakeFiles/clip.dir/compiler_depend.make

# Include the progress variables for this target.
include clip/CMakeFiles/clip.dir/progress.make

# Include the compile flags for this target's objects.
include clip/CMakeFiles/clip.dir/flags.make

clip/CMakeFiles/clip.dir/clip.cpp.o: clip/CMakeFiles/clip.dir/flags.make
clip/CMakeFiles/clip.dir/clip.cpp.o: /Users/chenqi/CLionProjects/meetingtool/clip/clip.cpp
clip/CMakeFiles/clip.dir/clip.cpp.o: clip/CMakeFiles/clip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object clip/CMakeFiles/clip.dir/clip.cpp.o"
	cd /Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/clip && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT clip/CMakeFiles/clip.dir/clip.cpp.o -MF CMakeFiles/clip.dir/clip.cpp.o.d -o CMakeFiles/clip.dir/clip.cpp.o -c /Users/chenqi/CLionProjects/meetingtool/clip/clip.cpp

clip/CMakeFiles/clip.dir/clip.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clip.dir/clip.cpp.i"
	cd /Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/clip && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chenqi/CLionProjects/meetingtool/clip/clip.cpp > CMakeFiles/clip.dir/clip.cpp.i

clip/CMakeFiles/clip.dir/clip.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clip.dir/clip.cpp.s"
	cd /Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/clip && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chenqi/CLionProjects/meetingtool/clip/clip.cpp -o CMakeFiles/clip.dir/clip.cpp.s

clip/CMakeFiles/clip.dir/image.cpp.o: clip/CMakeFiles/clip.dir/flags.make
clip/CMakeFiles/clip.dir/image.cpp.o: /Users/chenqi/CLionProjects/meetingtool/clip/image.cpp
clip/CMakeFiles/clip.dir/image.cpp.o: clip/CMakeFiles/clip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object clip/CMakeFiles/clip.dir/image.cpp.o"
	cd /Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/clip && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT clip/CMakeFiles/clip.dir/image.cpp.o -MF CMakeFiles/clip.dir/image.cpp.o.d -o CMakeFiles/clip.dir/image.cpp.o -c /Users/chenqi/CLionProjects/meetingtool/clip/image.cpp

clip/CMakeFiles/clip.dir/image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clip.dir/image.cpp.i"
	cd /Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/clip && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chenqi/CLionProjects/meetingtool/clip/image.cpp > CMakeFiles/clip.dir/image.cpp.i

clip/CMakeFiles/clip.dir/image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clip.dir/image.cpp.s"
	cd /Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/clip && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chenqi/CLionProjects/meetingtool/clip/image.cpp -o CMakeFiles/clip.dir/image.cpp.s

clip/CMakeFiles/clip.dir/clip_osx.mm.o: clip/CMakeFiles/clip.dir/flags.make
clip/CMakeFiles/clip.dir/clip_osx.mm.o: /Users/chenqi/CLionProjects/meetingtool/clip/clip_osx.mm
clip/CMakeFiles/clip.dir/clip_osx.mm.o: clip/CMakeFiles/clip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object clip/CMakeFiles/clip.dir/clip_osx.mm.o"
	cd /Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/clip && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT clip/CMakeFiles/clip.dir/clip_osx.mm.o -MF CMakeFiles/clip.dir/clip_osx.mm.o.d -o CMakeFiles/clip.dir/clip_osx.mm.o -c /Users/chenqi/CLionProjects/meetingtool/clip/clip_osx.mm

clip/CMakeFiles/clip.dir/clip_osx.mm.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clip.dir/clip_osx.mm.i"
	cd /Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/clip && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chenqi/CLionProjects/meetingtool/clip/clip_osx.mm > CMakeFiles/clip.dir/clip_osx.mm.i

clip/CMakeFiles/clip.dir/clip_osx.mm.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clip.dir/clip_osx.mm.s"
	cd /Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/clip && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chenqi/CLionProjects/meetingtool/clip/clip_osx.mm -o CMakeFiles/clip.dir/clip_osx.mm.s

# Object files for target clip
clip_OBJECTS = \
"CMakeFiles/clip.dir/clip.cpp.o" \
"CMakeFiles/clip.dir/image.cpp.o" \
"CMakeFiles/clip.dir/clip_osx.mm.o"

# External object files for target clip
clip_EXTERNAL_OBJECTS =

clip/libclip.a: clip/CMakeFiles/clip.dir/clip.cpp.o
clip/libclip.a: clip/CMakeFiles/clip.dir/image.cpp.o
clip/libclip.a: clip/CMakeFiles/clip.dir/clip_osx.mm.o
clip/libclip.a: clip/CMakeFiles/clip.dir/build.make
clip/libclip.a: clip/CMakeFiles/clip.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libclip.a"
	cd /Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/clip && $(CMAKE_COMMAND) -P CMakeFiles/clip.dir/cmake_clean_target.cmake
	cd /Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/clip && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/clip.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
clip/CMakeFiles/clip.dir/build: clip/libclip.a
.PHONY : clip/CMakeFiles/clip.dir/build

clip/CMakeFiles/clip.dir/clean:
	cd /Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/clip && $(CMAKE_COMMAND) -P CMakeFiles/clip.dir/cmake_clean.cmake
.PHONY : clip/CMakeFiles/clip.dir/clean

clip/CMakeFiles/clip.dir/depend:
	cd /Users/chenqi/CLionProjects/meetingtool/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/chenqi/CLionProjects/meetingtool /Users/chenqi/CLionProjects/meetingtool/clip /Users/chenqi/CLionProjects/meetingtool/cmake-build-debug /Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/clip /Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/clip/CMakeFiles/clip.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : clip/CMakeFiles/clip.dir/depend
