# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /private/var/folders/z8/hz63br4d5_lg7c9cxlb241600000gn/T/AppTranslocation/CDF69BD9-512B-4D90-A328-7B15FC1931D8/d/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /private/var/folders/z8/hz63br4d5_lg7c9cxlb241600000gn/T/AppTranslocation/CDF69BD9-512B-4D90-A328-7B15FC1931D8/d/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/BeeSafePI.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/BeeSafePI.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BeeSafePI.dir/flags.make

CMakeFiles/BeeSafePI.dir/src/main.cpp.o: CMakeFiles/BeeSafePI.dir/flags.make
CMakeFiles/BeeSafePI.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BeeSafePI.dir/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BeeSafePI.dir/src/main.cpp.o -c /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/main.cpp

CMakeFiles/BeeSafePI.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BeeSafePI.dir/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/main.cpp > CMakeFiles/BeeSafePI.dir/src/main.cpp.i

CMakeFiles/BeeSafePI.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BeeSafePI.dir/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/main.cpp -o CMakeFiles/BeeSafePI.dir/src/main.cpp.s

CMakeFiles/BeeSafePI.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/BeeSafePI.dir/src/main.cpp.o.requires

CMakeFiles/BeeSafePI.dir/src/main.cpp.o.provides: CMakeFiles/BeeSafePI.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/BeeSafePI.dir/build.make CMakeFiles/BeeSafePI.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/BeeSafePI.dir/src/main.cpp.o.provides

CMakeFiles/BeeSafePI.dir/src/main.cpp.o.provides.build: CMakeFiles/BeeSafePI.dir/src/main.cpp.o


CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.o: CMakeFiles/BeeSafePI.dir/flags.make
CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.o: ../src/geo/GeoFence.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.o -c /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/geo/GeoFence.cpp

CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/geo/GeoFence.cpp > CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.i

CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/geo/GeoFence.cpp -o CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.s

CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.o.requires:

.PHONY : CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.o.requires

CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.o.provides: CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.o.requires
	$(MAKE) -f CMakeFiles/BeeSafePI.dir/build.make CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.o.provides.build
.PHONY : CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.o.provides

CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.o.provides.build: CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.o


CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.o: CMakeFiles/BeeSafePI.dir/flags.make
CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.o: ../src/geo/GeoPath.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.o -c /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/geo/GeoPath.cpp

CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/geo/GeoPath.cpp > CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.i

CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/geo/GeoPath.cpp -o CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.s

CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.o.requires:

.PHONY : CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.o.requires

CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.o.provides: CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.o.requires
	$(MAKE) -f CMakeFiles/BeeSafePI.dir/build.make CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.o.provides.build
.PHONY : CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.o.provides

CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.o.provides.build: CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.o


CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.o: CMakeFiles/BeeSafePI.dir/flags.make
CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.o: ../src/contact/Contact.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.o -c /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/contact/Contact.cpp

CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/contact/Contact.cpp > CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.i

CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/contact/Contact.cpp -o CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.s

CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.o.requires:

.PHONY : CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.o.requires

CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.o.provides: CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.o.requires
	$(MAKE) -f CMakeFiles/BeeSafePI.dir/build.make CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.o.provides.build
.PHONY : CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.o.provides

CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.o.provides.build: CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.o


CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.o: CMakeFiles/BeeSafePI.dir/flags.make
CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.o: ../src/geo/Fence.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.o -c /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/geo/Fence.cpp

CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/geo/Fence.cpp > CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.i

CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/geo/Fence.cpp -o CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.s

CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.o.requires:

.PHONY : CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.o.requires

CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.o.provides: CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.o.requires
	$(MAKE) -f CMakeFiles/BeeSafePI.dir/build.make CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.o.provides.build
.PHONY : CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.o.provides

CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.o.provides.build: CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.o


CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.o: CMakeFiles/BeeSafePI.dir/flags.make
CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.o: ../src/account/Account.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.o -c /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/account/Account.cpp

CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/account/Account.cpp > CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.i

CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/account/Account.cpp -o CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.s

CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.o.requires:

.PHONY : CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.o.requires

CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.o.provides: CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.o.requires
	$(MAKE) -f CMakeFiles/BeeSafePI.dir/build.make CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.o.provides.build
.PHONY : CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.o.provides

CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.o.provides.build: CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.o


CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.o: CMakeFiles/BeeSafePI.dir/flags.make
CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.o: ../src/account/builders/AccountBuilder.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.o -c /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/account/builders/AccountBuilder.cpp

CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/account/builders/AccountBuilder.cpp > CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.i

CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/src/account/builders/AccountBuilder.cpp -o CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.s

CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.o.requires:

.PHONY : CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.o.requires

CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.o.provides: CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.o.requires
	$(MAKE) -f CMakeFiles/BeeSafePI.dir/build.make CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.o.provides.build
.PHONY : CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.o.provides

CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.o.provides.build: CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.o


# Object files for target BeeSafePI
BeeSafePI_OBJECTS = \
"CMakeFiles/BeeSafePI.dir/src/main.cpp.o" \
"CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.o" \
"CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.o" \
"CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.o" \
"CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.o" \
"CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.o" \
"CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.o"

# External object files for target BeeSafePI
BeeSafePI_EXTERNAL_OBJECTS =

BeeSafePI: CMakeFiles/BeeSafePI.dir/src/main.cpp.o
BeeSafePI: CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.o
BeeSafePI: CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.o
BeeSafePI: CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.o
BeeSafePI: CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.o
BeeSafePI: CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.o
BeeSafePI: CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.o
BeeSafePI: CMakeFiles/BeeSafePI.dir/build.make
BeeSafePI: /usr/local/lib/libcpprest.2.10.dylib
BeeSafePI: /usr/lib/libssl.dylib
BeeSafePI: /usr/lib/libcrypto.dylib
BeeSafePI: CMakeFiles/BeeSafePI.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable BeeSafePI"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BeeSafePI.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BeeSafePI.dir/build: BeeSafePI

.PHONY : CMakeFiles/BeeSafePI.dir/build

CMakeFiles/BeeSafePI.dir/requires: CMakeFiles/BeeSafePI.dir/src/main.cpp.o.requires
CMakeFiles/BeeSafePI.dir/requires: CMakeFiles/BeeSafePI.dir/src/geo/GeoFence.cpp.o.requires
CMakeFiles/BeeSafePI.dir/requires: CMakeFiles/BeeSafePI.dir/src/geo/GeoPath.cpp.o.requires
CMakeFiles/BeeSafePI.dir/requires: CMakeFiles/BeeSafePI.dir/src/contact/Contact.cpp.o.requires
CMakeFiles/BeeSafePI.dir/requires: CMakeFiles/BeeSafePI.dir/src/geo/Fence.cpp.o.requires
CMakeFiles/BeeSafePI.dir/requires: CMakeFiles/BeeSafePI.dir/src/account/Account.cpp.o.requires
CMakeFiles/BeeSafePI.dir/requires: CMakeFiles/BeeSafePI.dir/src/account/builders/AccountBuilder.cpp.o.requires

.PHONY : CMakeFiles/BeeSafePI.dir/requires

CMakeFiles/BeeSafePI.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BeeSafePI.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BeeSafePI.dir/clean

CMakeFiles/BeeSafePI.dir/depend:
	cd /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/cmake-build-debug /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/cmake-build-debug /Users/danielsvasiljevs/CLionProjects/BeeSafe/software/BeeSafePI/cmake-build-debug/CMakeFiles/BeeSafePI.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BeeSafePI.dir/depend
