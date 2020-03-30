# AddressSanitizer

1. В CMakeLists.txt прописать
```cpp
cmake_minimum_required(VERSION 3.0.0)
 
# Создаем переменную хранения тестируемых файлов
add_executable(runTests tests/CGraph.cpp)
target_link_libraries(runTests asan)

target_compile_options(runTests
        PUBLIC -fsanitize=address
        PUBLIC -fno-omit-frame-pointer
        PUBLIC -O0
        PUBLIC -g)
```
