//
//  main.swift
//  1707
//
//  Created by 이치훈 on 1/26/24.
//

let testCase = Int(String(readLine()!))!

for _ in 1...testCase {
  let input = readLine()!.split(separator: " ").map { Int(String($0))! }
  let v = input[0], e = input[1]
  var graph = [[Int]](repeating: [], count: v+1)
  var visited = [Bool](repeating: false, count: v+1)
  var isGroupA = [Bool](repeating: false, count: v+1)
  var isBinaryTree = true
  
  for _ in 0..<e {
    let edge = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = edge[0], b = edge[1]
    
    graph[a].append(b)
    graph[b].append(a)
  }
  
  for i in 1...v {
    dfs(n: i)
  }
  
  isBinaryTree ? print("YES") : print("NO")
  
  func dfs(n node: Int) {
    
    for i in graph[node] {
      if !visited[i] {
        isGroupA[i] = !isGroupA[node]
        visited[node] = true
        dfs(n: i)
      } else {
        if isGroupA[i] == isGroupA[node] {
          isBinaryTree = false
          return
        }
      }
      
    }
  }
  
}
