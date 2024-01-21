//
//  main.swift
//  24479
//
//  Created by 이치훈 on 1/21/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1], r = input[2]
var graph = [[Int]](repeating: [], count: n+1)
var visited = [Bool](repeating: false, count: n+1)
var nodeSequence = [Int](repeating: 0, count: n+1)
var sequenceCount = 1

for _ in 0..<m {
  let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
  let a = edge[0], b = edge[1]
  
  graph[a].append(b)
  graph[b].append(a)
}

for i in 1..<graph.count {
  graph[i] = graph[i].sorted()
}


func dfs(d depth: Int) {
  if visited[depth] { return }
  
  visited[depth] = true
  nodeSequence[depth] = sequenceCount
  sequenceCount += 1
  
  for i in graph[depth] {
    dfs(d: i)
  }
}

dfs(d: r)

for i in 1..<nodeSequence.count {
  print(nodeSequence[i])
}
