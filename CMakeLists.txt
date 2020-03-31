cmake_minimum_required(VERSION 3.5)

project("HelloWorld")

find_package(Catch2 REQUIRED)
add_executable(foo tests/CGraph.cpp)
target_link_libraries(foo Catch2::Catch2)

include(CTest)
include(Catch)
catch_discover_tests(foo)