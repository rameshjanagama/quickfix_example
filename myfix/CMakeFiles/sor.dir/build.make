# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /home/jramesh1/.local/lib/python3.8/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/jramesh1/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jramesh1/CPP/quickfix_example/myfix

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jramesh1/CPP/quickfix_example/myfix

# Include any dependencies generated for this target.
include CMakeFiles/sor.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sor.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sor.dir/flags.make

CMakeFiles/sor.dir/sor.cpp.o: CMakeFiles/sor.dir/flags.make
CMakeFiles/sor.dir/sor.cpp.o: sor.cpp
CMakeFiles/sor.dir/sor.cpp.o: CMakeFiles/sor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jramesh1/CPP/quickfix_example/myfix/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sor.dir/sor.cpp.o"
	/home/jramesh1/anaconda3/envs/cpp/bin/x86_64-conda-linux-gnu-c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sor.dir/sor.cpp.o -MF CMakeFiles/sor.dir/sor.cpp.o.d -o CMakeFiles/sor.dir/sor.cpp.o -c /home/jramesh1/CPP/quickfix_example/myfix/sor.cpp

CMakeFiles/sor.dir/sor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sor.dir/sor.cpp.i"
	/home/jramesh1/anaconda3/envs/cpp/bin/x86_64-conda-linux-gnu-c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jramesh1/CPP/quickfix_example/myfix/sor.cpp > CMakeFiles/sor.dir/sor.cpp.i

CMakeFiles/sor.dir/sor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sor.dir/sor.cpp.s"
	/home/jramesh1/anaconda3/envs/cpp/bin/x86_64-conda-linux-gnu-c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jramesh1/CPP/quickfix_example/myfix/sor.cpp -o CMakeFiles/sor.dir/sor.cpp.s

CMakeFiles/sor.dir/fix.cpp.o: CMakeFiles/sor.dir/flags.make
CMakeFiles/sor.dir/fix.cpp.o: fix.cpp
CMakeFiles/sor.dir/fix.cpp.o: CMakeFiles/sor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jramesh1/CPP/quickfix_example/myfix/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sor.dir/fix.cpp.o"
	/home/jramesh1/anaconda3/envs/cpp/bin/x86_64-conda-linux-gnu-c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sor.dir/fix.cpp.o -MF CMakeFiles/sor.dir/fix.cpp.o.d -o CMakeFiles/sor.dir/fix.cpp.o -c /home/jramesh1/CPP/quickfix_example/myfix/fix.cpp

CMakeFiles/sor.dir/fix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sor.dir/fix.cpp.i"
	/home/jramesh1/anaconda3/envs/cpp/bin/x86_64-conda-linux-gnu-c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jramesh1/CPP/quickfix_example/myfix/fix.cpp > CMakeFiles/sor.dir/fix.cpp.i

CMakeFiles/sor.dir/fix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sor.dir/fix.cpp.s"
	/home/jramesh1/anaconda3/envs/cpp/bin/x86_64-conda-linux-gnu-c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jramesh1/CPP/quickfix_example/myfix/fix.cpp -o CMakeFiles/sor.dir/fix.cpp.s

# Object files for target sor
sor_OBJECTS = \
"CMakeFiles/sor.dir/sor.cpp.o" \
"CMakeFiles/sor.dir/fix.cpp.o"

# External object files for target sor
sor_EXTERNAL_OBJECTS =

sor: CMakeFiles/sor.dir/sor.cpp.o
sor: CMakeFiles/sor.dir/fix.cpp.o
sor: CMakeFiles/sor.dir/build.make
sor: CMakeFiles/sor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jramesh1/CPP/quickfix_example/myfix/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable sor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sor.dir/build: sor
.PHONY : CMakeFiles/sor.dir/build

CMakeFiles/sor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sor.dir/clean

CMakeFiles/sor.dir/depend:
	cd /home/jramesh1/CPP/quickfix_example/myfix && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jramesh1/CPP/quickfix_example/myfix /home/jramesh1/CPP/quickfix_example/myfix /home/jramesh1/CPP/quickfix_example/myfix /home/jramesh1/CPP/quickfix_example/myfix /home/jramesh1/CPP/quickfix_example/myfix/CMakeFiles/sor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sor.dir/depend

