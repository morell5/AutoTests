cmake_minimum_required(VERSION 3.0.0)

add_executable(runTests tests/CGraph.cpp)
target_link_libraries(runTests asan)

target_compile_options(runTests
        PUBLIC -fsanitize=address
        PUBLIC -fno-omit-frame-pointer
        PUBLIC -O0
        PUBLIC -g)