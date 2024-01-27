//
//  main.swift
//  24484
//
//  Created by 이치훈 on 1/27/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1], r = input[2]
var graph = [[Int]](repeating: [], count: n+1)
var visited = [Bool](repeating: false, count: n+1)
var depthArray = [Int](repeating: 0, count: n+1)
var sequenceCount = 0

for _ in 0..<m {
  let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
  let a = edge[0], b = edge[1]
  
  graph[a].append(b)
  graph[b].append(a)
}

for i in 1...n {
  graph[i].sort(by: >)
}

func dfs(n node: Int, d depth: Int) {
  if visited[node] { return }
  
  visited[node] = true
  sequenceCount += 1
  depthArray[node] = depth * sequenceCount
  
  for i in graph[node] {
    dfs(n: i, d: depth + 1)
  }
}

dfs(n: r, d: 0)

print(depthArray.reduce(0) { $0 + $1 })
