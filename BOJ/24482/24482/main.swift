//
//  main.swift
//  24482
//
//  Created by 이치훈 on 1/27/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1], r = input[2]
var graph = [[Int]](repeating: [], count: n+1)
var visited = [Bool](repeating: false, count: n+1)
var depthArray = [Int](repeating: -1, count: n+1)

for _ in 0..<m {
  let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
  let a = edge[0], b = edge[1]
  
  graph[a].append(b)
  graph[b].append(a)
}

for i in 1...n {
  graph[i].sort(by: >)
}

func dfs(n node: Int, depth: Int) {
  if visited[node] { return }
  
  visited[node] = true
  depthArray[node] = depth
  
  for i in graph[node] {
    dfs(n: i, depth: depth + 1)
  }
}

dfs(n: r, depth: 0)

for i in 1..<depthArray.count {
  print(depthArray[i])
}
