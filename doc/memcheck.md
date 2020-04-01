# MemoryCheck

## ОС Linux 
1. AddressSanitizer 
    1. В CMakeLists.txt к исполняемому файлу функцией **target_link_libraries** присоедияем бибилотеку **asan**

    ```cpp
    cmake_minimum_required(VERSION 3.5)

    project("TestProject")

    find_package(Catch2 REQUIRED)
    add_executable(testExecutable tests/CGraph.cpp)
    // присоединили бибилотеку
    target_link_libraries(testExecutable asan)
    ```
2. DrMemory

## OS Windows
1. DrMemory
    1. Установка
        1. Скачиваем [DrMemory-Windows-2.3.0-1.msi](https://github.com/DynamoRIO/drmemory/wiki/Downloads)
        2. Устанавливаем в "C:\Program Files (x86)\Dr. Memory\bin\"
    2. Указываем в терминале команду
        > drmemory -ignore_kernel -logdir /path/to/status/folder -- /path/to/executable

        Пример:
        > drmemory -ignore_kernel -logdir .\status -- .\project_build\testExecutable.exe
    3. Анализируем вывод

        ![DrMemoryResult](https://i.imgur.com/v0V0uRx.jpg)