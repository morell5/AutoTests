# AddressSanitizer

1. В CMakeLists.txt к исполняемому файлу функцией **target_link_libraries** присоедияем бибилотеку **asan**

```cpp
cmake_minimum_required(VERSION 3.5)

project("TestProject")

find_package(Catch2 REQUIRED)
add_executable(testExecutable tests/CGraph.cpp)
// присоединили бибилотеку
target_link_libraries(testExecutable asan)
```
