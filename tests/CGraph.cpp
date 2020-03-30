#include <gtest/gtest.h>
#include "src/CGraph.h" 

TEST(PushEdge, CorrectNumEdges) {
    const int numVertices = 4;
    const int distanceSentinel = -1;
    CGraph<int> graph(numVertices, distanceSentinel);
    for( int i = 0; i < numVertices - 1; i++) {
        graph.PushEdge(i, i + 1, i);
    }
    ASSERT_EQ(numVertices, graph.NumEdges());
}
 
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