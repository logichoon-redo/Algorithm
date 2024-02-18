//
//  main.swift
//  4803
//
//  Created by 이치훈 on 2/18/24.
//

var testCase = 0

while true {
  let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
  let n = nm[0], m = nm[1]
  if n == 0 && m == 0 { break }
  var graph = [[Int]](repeating: [], count: n+1)
  var visited = [Bool](repeating: false, count: n+1)
  var isTree = true
  var tCount = 0
  testCase += 1
  
  _=(0..<m).map { _ in
    let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
    let parent = edge[0], son = edge[1]
    
    graph[parent].append(son)
    graph[son].append(parent)
  }
  
  func dfs(prev: Int, current: Int) {
    
    visited[current] = true
    
    for nextNode in graph[current] {
      if prev == nextNode { continue }
      if visited[nextNode] { isTree = false; continue }
      dfs(prev: current, current: nextNode)
    }
  }
  
  for i in 1...n {
    if !visited[i] {
      isTree = true
      
      dfs(prev: 0, current: i)
      
      if isTree { tCount += 1 }
    }
  }
  
  switch tCount {
  case 0: print("Case \(testCase): No trees.")
  case 1: print("Case \(testCase): There is one tree.")
  default: print("Case \(testCase): A forest of \(tCount) trees.")
  }
}
