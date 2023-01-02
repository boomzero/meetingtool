cmake_minimum_required(VERSION 3.24)
project(meetingtool)

set(CMAKE_CXX_STANDARD 17)
include(FetchContent)
FetchContent_Declare(
        yaml-cpp
        GIT_REPOSITORY https://ghproxy.com/https://github.com/jbeder/yaml-cpp.git
        GIT_TAG a6bbe0e50ac4074f0b9b44188c28cf00caf1a723
)

set(YAML_CPP_BUILD_TESTS OFF)
FetchContent_MakeAvailable(yaml-cpp)
# Disable clip examples and tests
set(CLIP_EXAMPLES OFF CACHE BOOL "Compile clip examples")
set(CLIP_TESTS OFF CACHE BOOL "Compile clip tests")

# In case that you have ${PNG_LIBRARY} set to support copy/paste images on Linux
#set(CLIP_X11_PNG_LIBRARY "${PNG_LIBRARY}")

# Add clip subdirectory to compile the library
add_subdirectory(clip)
add_executable(meetingtool main.cpp)
target_link_libraries(meetingtool yaml-cpp clip)
