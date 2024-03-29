# Catch 2

## ОС Windows
1. Установить MinGW
    1. Скачиваем [mingw-get-setup.exe](http://www.mingw.org/wiki/Getting_Started)
    2. Устанавливаем в "C:\MinGW"
    3. При установке выбираем все пункты в Base

    ![MinGW_installation](https://i.imgur.com/orgwG0M.jpg)

2. Установить CMake
    1. Скачиваем [cmake-3.17.0-win64-x64.msi](https://cmake.org/download/)
    2. Устанавливаем в "C:\Program Files\CMake\"
    3. Добавляем в переменную окружения **PATH**

    ![CMake_PATH](https://i.imgur.com/Sl2lc2M.jpg)

3. Делегируем права администратора среде разрабоотки

    ![VSCode_Admin](https://i.imgur.com/ESjrAVw.jpg)

4. Переходим в рабочую директорию

    ![Initial_Working_Directory](https://i.imgur.com/DAyLq9C.jpg)

5. Устанавливаем Catch2
    1. Клонируем проект Catch2 в рабочую директорию
        > git clone https://github.com/catchorg/Catch2.git

        ![Catch2_cloned](https://i.imgur.com/Yv95fzD.jpg)
    2. Переходим в директорию с CMakeLists.txt проекта Catch2
        > cd Catch2

        ![Catch2_path](https://i.imgur.com/tzdFnia.jpg)
    3. Компилируем проект Catch2
        > cmake -G "MinGW Makefiles" -B..\catch2_build -S.</br>
        > cmake --build ..\catch2_build --target install

        ![Catch2_Build](https://i.imgur.com/e3Cn3G7.jpg)
6. Подключаем header "catch.hpp" в файл с тестами 
    ```cpp
    #define CATCH_CONFIG_MAIN
    #include "..\Catch2\single_include\catch2\catch.hpp"
    ```

7. Добавляем тест в CGraph.cpp
    ```cpp
    #define CATCH_CONFIG_MAIN
    #include <catch2\catch.hpp>
    #include "..\src\CGraph.h"

    TEST_CASE("EdgeExistance", "PushEdge") {
        INFO( "TEST_CASE:EdgeExistance Property:PushEdge started!");
        const int numVertices = 4;
        const int sentinelDistance = 100;
        CGraph<int> graph(numVertices, sentinelDistance);
        for (int i = 0; i < numVertices - 1; i++) {
            graph.PushEdge(i, i + 1, i + 1);
        } 
        // Correct!
        REQUIRE(graph.EdgeExist(0, 1));
        REQUIRE(graph.EdgeExist(1, 2));
        REQUIRE(graph.EdgeExist(2, 3));
    }

    TEST_CASE( "NumEdges", "PushEdge") {
        INFO( "TEST_CASE:NumEdges Property:PushEdge started!");
        const int numVertices = 4;
        const int sentinelDistance = 100;
        CGraph<int> graph(numVertices, sentinelDistance);
        for (int i = 0; i < numVertices - 1; i++) {
            graph.PushEdge(i, i + 1, i + 1);
        }
        // Fail!
        REQUIRE( graph.NumEdges() == numVertices);
    }
    ```

8. В CMakeLists своего проекта интегрируем Catch2
    ```cmake
    cmake_minimum_required(VERSION 3.5)

    project("TestProject")

    find_package(Catch2 REQUIRED)
    add_executable(testExecutable tests/CGraph.cpp)
    target_link_libraries(testExecutable Catch2::Catch2)

    include(CTest)
    include(Catch)
    catch_discover_tests(testExecutable)
    ```

9. Запускаем тесты
    1. Переходим в директорию с CMakeLists.txt своего проекта
        > cd ..

        ![Working_Directory_Path](https://i.imgur.com/GzcViH0.jpg)
    2. Компилируем свой проект
        > cmake -G "MinGW Makefiles" -Bproject_build -S.</br>
        > cmake --build project_build

        ![Project_Build](https://i.imgur.com/mvxo4Tg.jpg)        
    3. Запускаем тесты
        > project_build\testExecutable.exe
    
        ![Tests_Passed](https://i.imgur.com/b5uEJZO.jpg)