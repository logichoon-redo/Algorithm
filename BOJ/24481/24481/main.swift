//
//  main.swift
//  24481
//
//  Created by 이치훈 on 1/26/24.
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

for i in 0..<n {
  graph[i] = graph[i].sorted()
}

func dfs(n node: Int, d depth: Int) {
  if visited[node] { return }
  
  visited[node] = true
  depthArray[node] = depth
  
  for i in graph[node] {
    dfs(n: i, d: depth + 1)
  }
}

dfs(n: r, d: 0)

for i in 1..<depthArray.count {
  print(depthArray[i])
}
