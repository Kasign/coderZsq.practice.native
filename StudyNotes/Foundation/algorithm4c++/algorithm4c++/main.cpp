//
//  main.cpp
//  alogrithm4c++
//
//  Created by 朱双泉 on 2018/6/6.
//  Copyright © 2018 Castie!. All rights reserved.
//

#include <iostream>
#include <algorithm>
#include <string>
#include <vector>
#include <iomanip>

#include "SortTestHelper.hpp"
#include "SelectionSort.hpp"
#include "InsertionSort.hpp"
#include "MergeSort.hpp"
#include "QuickSort.hpp"
#include "HeapSort.hpp"

#include "DenseGraph.hpp"
#include "SparseGraph.hpp"
#include "ReadGraph.hpp"
#include "Component.hpp"
#include "Path.hpp"
#include "ShortestPath.hpp"
#include "LazyPrimMST.hpp"
#include "PrimMST.hpp"
#include "UnionFind.hpp"
#include "KruskalMST.hpp"
#include "Dijkstra.hpp"
#include "BellmanFord.hpp"

using namespace std;

string path = "/Users/zhushuangquan"
              "/Native Drive/GitHub"
              "/coderZsq.target.swift/StudyNotes/algorithm4c++/";

int main(int argc, const char * argv[]) {
    
    string filename = "testG4.txt";
    int V = 5;
    
    SparseGraph<int> g = SparseGraph<int>(V, true);
    ReadGraph<SparseGraph<int>, int> readGraph(g, path + filename);
    
    cout<<"Test Dijkstra"<<endl<<endl;
    Dijkstra<SparseGraph<int>, int> dij(g, 0);
    for (int i = 1; i < V; i++) {
        cout<<"Shortest Path to "<<i<<" : "<<dij.shortestPathTo(i)<<endl;
        dij.showPath(i);
        cout<<"----------"<<endl;
    }
    
    cout<<endl<<"Test Bellman-Ford:"<<endl<<endl;
    BellmanFord<SparseGraph<int>, int> bellmanFord(g, 0);
    if (bellmanFord.negativeCycle()) {
        cout<<"The graph contain negetive cycle!"<<endl;
    } else {
        for (int i = 1; i < V; i++) {
            cout<<"Shortest Path to "<<i<<" : "<<bellmanFord.shortestPathTo(i)<<endl;
            bellmanFord.showPath(i);
            cout<<"----------"<<endl;
        }
    }

    return 0;
}

void graphTest7() {
    
    string filename = "testG3.txt";
    int V = 8;
    
    SparseGraph<double> g = SparseGraph<double>(V, false);
    ReadGraph<SparseGraph<double>, double> readGraph(g, path + filename);
    
    //Test Lazy Prim MST
    cout<<"Test Lazy Prim MST: "<<endl;
    LazyPrimMST<SparseGraph<double>, double> lazyPrimMST(g);
    vector<Edge<double>> mst = lazyPrimMST.mstEdges();
    for (int i = 0; i < mst.size(); i++) {
        cout<<mst[i]<<endl;
    }
    cout<<"The MST weight is: "<<lazyPrimMST.result()<<endl;
    cout<<endl;
    
    //Test Prim MST
    cout<<"Test Prim MST: "<<endl;
    PrimMST<SparseGraph<double>, double> primMST(g);
    mst = primMST.mstEdges();
    for (int i = 0; i < mst.size(); i++) {
        cout<<mst[i]<<endl;
    }
    cout<<"The MST weight is: "<<primMST.result()<<endl;
    cout<<endl;
    
    //Test Kruskal MST
    cout<<"Test Kruskal MST:"<<endl;
    KruskalMST<SparseGraph<double>, double> kruskalMST(g);
    mst = kruskalMST.mstEdges();
    for( int i = 0 ; i < mst.size() ; i ++ )
        cout<<mst[i]<<endl;
    cout<<"The MST weight is: "<<kruskalMST.result()<<endl;

}

void graphTest6() {
    
    string filename = "testG3.txt";
    int V = 8;
    cout<<fixed<<setprecision(2);
    
    //Test Weighted Dense Graph
    DenseGraph<double> g1 = DenseGraph<double>(V, false);
    ReadGraph<DenseGraph<double>, double> readGraph1(g1, path + filename);
    g1.show();
    cout<<endl;
    
    //Test Weighted Sparse Graph
    SparseGraph<double> g2 = SparseGraph<double>(V, false);
    ReadGraph<SparseGraph<double>, double> readGraph2(g2, path + filename);
    g2.show();
    cout<<endl;
}

void graphTest5() {
    
    //    string filename = "testG2.txt";
    //    SparseGraph g = SparseGraph(7, false);
    //    ReadGraph<SparseGraph> readGraph(g, path + filename);
    //    g.show();
    //    cout<<endl;
    //
    //    Path<SparseGraph> dfs(g, 0);
    //    cout<<"DFS : ";
    //    dfs.showPath(6);
    //
    //    ShortestPath<SparseGraph> bfs(g, 0);
    //    cout<<"BFS : ";
    //    bfs.showPath(6);
}

void graphTest4() {
    
    //    string filename = "testG2.txt";
    //    SparseGraph g = SparseGraph(7, false);
    //    ReadGraph<SparseGraph> readGraph(g, path + filename);
    //    g.show();
    //    cout<<endl;
    //
    //    Path<SparseGraph> dfs(g, 0);
    //    cout<<"DFS : ";
    //    dfs.showPath(6);
}

void graphTest3() {
    
    //    //TestG1.txt
    //    string filename1 = "testG1.txt";
    //    SparseGraph g1 = SparseGraph(13, false);
    //    ReadGraph<SparseGraph> readGraph1(g1, path + filename1);
    //    Component<SparseGraph> component1(g1);
    //    cout<<"TestG1.txt, Component Count: "<<component1.count()<<endl;
    //
    //    //TestG2.txt
    //    string filename2 = "testG2.txt";
    //    SparseGraph g2 = SparseGraph(7, false);
    //    ReadGraph<SparseGraph> readGraph2(g2, path + filename2);
    //    Component<SparseGraph> component2(g2);
    //    cout<<"TestG2.txt, Component Count: "<<component2.count()<<endl;
    
}

void graphTest2() {
    //
    //    string filename = "testG1.txt";
    //    SparseGraph g1(13, false);
    //    ReadGraph<SparseGraph> readGraph1(g1, path + filename);
    //    g1.show();
    //
    //    cout<<endl;
    //
    //    DenseGraph g2(13, false);
    //    ReadGraph<DenseGraph> readGraph2(g2, path + filename);
    //    g2.show();
}

void graphTest() {
    
    //    int N = 20;
    //    int M = 100;
    //
    //    srand(time(NULL));
    //
    //    //Sparse Graph
    //    SparseGraph g1(N, false);
    //    for (int i = 0; i < M; i++) {
    //        int a = rand() % N;
    //        int b = rand() % N;
    //        g1.addEdge(a, b);
    //    }
    //    //O(E)
    //    for (int v = 0; v < N; v++) {
    //        cout<<v<<" : ";
    //        SparseGraph::adjIterator adj(g1, v);
    //        for (int w = adj.begin(); !adj.end(); w = adj.next()) {
    //            cout<<w<<" ";
    //        }
    //        cout<<endl;
    //    }
    //
    //    //Dense Graph
    //    DenseGraph g2(N, false);
    //    for (int i = 0; i < M; i++) {
    //        int a = rand() % N;
    //        int b = rand() % N;
    //        g2.addEdge(a, b);
    //    }
    //    //O(V ^ 2)
    //    for (int v = 0; v < N; v++) {
    //        cout<<v<<" : ";
    //        DenseGraph::adjIterator adj(g2, v);
    //        for (int w = adj.begin(); !adj.end(); w = adj.next()) {
    //            cout<<w<<" ";
    //        }
    //        cout<<endl;
    //    }
}

void sortTest() {
    int n = 100000;
    int * arr = SortTestHelper::generateRandomArray(n, 0, 10);
    int * arr2 = SortTestHelper::copyIntArray(arr, n);
    int * arr3 = SortTestHelper::copyIntArray(arr, n);
    int * arr4 = SortTestHelper::copyIntArray(arr, n);
    int * arr5 = SortTestHelper::copyIntArray(arr, n);
    SortTestHelper::testSort("Insertion Sort", insertionSort, arr, n);
    SortTestHelper::testSort("Selection Sort", selectionSort, arr2, n);
    SortTestHelper::testSort("Merge Sort", mergeSort, arr3, n);
    SortTestHelper::testSort("Quick Sort", quickSort, arr4, n);
    SortTestHelper::testSort("Heap Sort", heapSort, arr5, n);
    delete []arr;
    delete []arr2;
    delete []arr3;
    delete []arr4;
}
