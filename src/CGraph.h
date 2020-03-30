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


template <class DistanceType>
CGraph<DistanceType>::CGraph(int _numVertices, int _distanceSentinel) : 
    numVertices(_numVertices),
    distanceSentinel(_distanceSentinel) {
      weights = new DistanceType*[numVertices];
      for( int row  = 0; row < numVertices; row++ ) {
          weights[row] = new int[numVertices];
          for( int col = 0; col < numVertices; col++ ) {
            weights[row][col] = distanceSentinel;
          }
      }
    }

template<class DistanceType>
CGraph<DistanceType>::~CGraph() {
  for (int i = 0; i < numVertices; i++) {
    delete weights[i];
  }
  delete[] weights;
}

template<class DistanceType>
void CGraph<DistanceType>::PushEdge(int first, int second, DistanceType weight) {
  weights[first][second] = weight;
}

template<class DistanceType>
void CGraph<DistanceType>::RelaxEdge(int first, int second) {
  distances[second] = distances[first] + weights[first][second];
}

template<class DistanceType>
int** CGraph<DistanceType>::GetWeights() const {
     return weights;
}

template<class DistanceType>
int CGraph<DistanceType>::NumEdges() const {
     int numEdges = 0;
     for (int row = 0; row < numVertices; row++) {
       for (int col = 0; col < numVertices; col++) {
         if (weights[row][col] != distanceSentinel) {
           numEdges++;
         }
       }
     }
     return numEdges;
}

template<class DistanceType>
bool CGraph<DistanceType>::EdgeExist(int first, int second) {
  return weights[first][second] != distanceSentinel;
}