# Googletests

## Установка
    
1. Перейти в директорию с проектом </br>
    * тут скрин
2. Открыть терминал
    * тут скрин
3. Выполнить команды
    > git clone https://github.com/google/googletest.git
    > sudo apt-get install libgtest-dev
    > sudo apt-get install cmake
    > cd /usr/src/gtest
    > sudo cmake CMakeLists.txt
    > sudo make
    > sudo cp *.a /usr/lib
4. Состояние
    * тут скрин

## Тестируемый класс
```cpp
template <class DistanceType>
class CGraph {
    
public:
  CGraph() = delete;
  CGraph(int _numVertices, int _distanceSentinel);
  CGraph(const CGraph& _graph);
  ~CGraph();

  void PushEdge(int first, int second, DistanceType weight);
  void RelaxEdge(int first, int second);
  int** GetWeights() const;
  int NumEdges() const;
  bool EdgeExist(int first, int second);

private:
  DistanceType** weights;
  DistanceType** distances;
  DistanceType distanceSentinel;
  int numVertices;
};
```

## Применение
1. В tests/CGraph.cpp подключить <gtest/gtest.h>
    * Замечание: на данном шаге часто возникает ошибка
        ```python
        /tmp/ccpfQ1l6.o: In function `main':
        main.cpp:(.text+0x2e): undefined reference to `testing::InitGoogleTest(int*, char**)'
        collect2: error: ld returned 1 exit status
        The terminal process terminated with exit code: 1
        ```
    * Причина: бинарные файлы не были перенесены в /usr/lib
        * libgtest.a
        * libgtest_main.a
    * Решение: в директории /usr/src/gtest
        > sudo cp *.a /usr/lib
    
2. В tests/CGraph.cpp написать тест:
```cpp
TEST(PushEdge, EdgeExistance) {
    const int numVertices = 4;
    const int distanceSentinel = -1;
    CGraph<int> graph(numVertices, distanceSentinel);
    for( int i = 0; i < numVertices - 1; i++) {
        graph.PushEdge(i, i + 1, i);
        ASSERT_TRUE(graph.EdgeExist(i + 1, i));
    }
}

int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
```

3. В CMakeLists.txt прописать
```cpp
cmake_minimum_required(VERSION 3.0.0)

# Ищем библиотку GTest
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})
 
# Создаем переменную хранения тестируемых файлов
# Добавляем библиотеки: GTest, pthread
add_executable(runTests tests/CGraph.cpp)
target_link_libraries(runTests ${GTEST_LIBRARIES} pthread)
```

4. Выполнить CMake : Build
5. ВЫполнить CMake : Release