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
    REQUIRE(graph.EdgeExist(12, 1));
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
    REQUIRE( graph.NumEdges() == numVertices - 1);
}