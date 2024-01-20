//
//  main.swift
//  11725
//
//  Created by 이치훈 on 1/20/24.
//

let n = Int(String(readLine()!))!
var graph = [[Int]](repeating: [], count: n+1)
var visited = [Bool](repeating: false, count: n+1)
var root = [Int](repeating: 0, count: n+1)

for _ in 1...n-1 {
  let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
  let a = edge[0], b = edge[1]
  
  graph[a].append(b)
  graph[b].append(a)
}

func dfs(d depth: Int, root myRoot: Int) {
  if visited[depth] { return }
  
  visited[depth] = true
  root[depth] = myRoot
  
  for i in graph[depth] {
    dfs(d: i, root: depth)
  }
}

dfs(d: 1, root: 1)

for i in 2..<root.count {
  print(root[i])
}
