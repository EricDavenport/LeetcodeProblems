import UIKit
import Foundation

/*
 
 0---------1
 |       / |  \
 |    /    |    \
 |  /      |    / 2
 |/        |  /
 4---------3/
 
   0 1 2 3 4
0: 0 1 0 0 1
1: 1 0 1 1 1
2: 0 1 0 1 0
3: 0 1 1 0 1
4: 1 1 0 1 0
 
 */

struct Graph {
  private var vertices: Int
  
  // data structure
  private var adjMatrix: [[Bool]]
  
  // initializer takes vartices
  // creates a matrixx and defaults values to false
  init(vertices: Int) { // number of vertices of nodes
    self.vertices = vertices
    
    // create our matrix
    self.adjMatrix = Array(repeating: Array(repeating: false, count: vertices), count: vertices)
  }
  
  mutating func addEdge(source: Int, destination: Int) {
    // assuming undirected graph
    adjMatrix[source][destination] = true
    adjMatrix[destination][source] = true
  }
  
  func printGraph() {
    var graphDescription = "   "
    
    for destIndex in 0..<vertices {
      graphDescription.append("\(destIndex) ")
    }
    graphDescription.append("\n")
    
    for srcIndex in 0..<adjMatrix.count {
      graphDescription.append("\(srcIndex): ")
      for hasConnection in adjMatrix[srcIndex] {
        // ternary
        graphDescription.append(hasConnection ? "1" : "0")
        
//        if hasConnection {
//          graphDescription.append("1")
//        } else {
//          graphDescription.append("0")
//        }
        graphDescription.append(" ")
      }
      graphDescription.append("\n")
    }
    print(graphDescription)
  }
}

/*
 0---------1
 |       / |  \
 |    /    |    \
 |  /      |    / 2
 |/        |  /
 4---------3/
 
 */

var graph = Graph(vertices: 5)
graph.addEdge(source: 0, destination: 1)
graph.addEdge(source: 0, destination: 4)

graph.addEdge(source: 1, destination: 2)
graph.addEdge(source: 1, destination: 3)
graph.addEdge(source: 1, destination: 4)

graph.addEdge(source: 2, destination: 3)

graph.addEdge(source: 3, destination: 4)

graph.printGraph()
