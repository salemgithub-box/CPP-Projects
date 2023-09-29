cmake_minimum_required(VERSION 3.22) # 3.22 is the default ubuntu version.

project(
    CppProjectHelloWorld
    VERSION 1.0.0 
    LANGUAGES C CXX) #project_name, VERSION, Include C and CPP


set(CMAKE_CXX_STANDARD          17) # set standard
set(CMAKE_CXX_STANDARD_REQUIRED ON) # is standard required ?
set(CMAKE_CXX_EXTENSIONS        OFF) # compilers have some features that aren't implemented in the CPP standards

# use names that aren't reserved by CMake
# names should be all in capital letters and separated by spaces.
set(LIBRARY_NAME "HelloWorldLibrary")
set(EXECUTABLE_NAME "EXECUTABLE")

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")
include(AddGitSubmodule)
add_git_submodule("external/json")

# where to search for CMakeLists.txt
add_subdirectory(src)
add_subdirectory(app)
add_subdirectory(configured)
