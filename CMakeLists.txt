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
add_executable(meetingtool main.cpp)
target_link_libraries(meetingtool yaml-cpp)
