cmake_minimum_required(VERSION 3.0.0)

# Ищем библиотку GTest
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})
 
# Создаем переменную хранения тестируемых файлов
# Добавляем библиотеки: GTest, pthread
add_executable(runTests tests/CGraph.cpp)
target_link_libraries(runTests asan ${GTEST_LIBRARIES} pthread)

target_compile_options(runTests
        PUBLIC -fsanitize=address
        PUBLIC -fno-omit-frame-pointer
        PUBLIC -O0
        PUBLIC -g)