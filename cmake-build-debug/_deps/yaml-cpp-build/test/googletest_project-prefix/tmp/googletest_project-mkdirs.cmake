# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/_deps/yaml-cpp-src/test/gtest-1.8.0"
  "/Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/_deps/yaml-cpp-build/test/googletest_project-prefix/src/googletest_project-build"
  "/Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/_deps/yaml-cpp-build/test/prefix"
  "/Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/_deps/yaml-cpp-build/test/googletest_project-prefix/tmp"
  "/Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/_deps/yaml-cpp-build/test/googletest_project-prefix/src/googletest_project-stamp"
  "/Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/_deps/yaml-cpp-build/test/googletest_project-prefix/src"
  "/Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/_deps/yaml-cpp-build/test/googletest_project-prefix/src/googletest_project-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/_deps/yaml-cpp-build/test/googletest_project-prefix/src/googletest_project-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/chenqi/CLionProjects/meetingtool/cmake-build-debug/_deps/yaml-cpp-build/test/googletest_project-prefix/src/googletest_project-stamp${cfgdir}") # cfgdir has leading slash
endif()
