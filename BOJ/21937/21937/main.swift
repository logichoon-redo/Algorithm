//
//  main.swift
//  21937
//
//  Created by 이치훈 on 2/7/24.
//

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0], m = nm[1]
var graph = [[Int]](repeating: [], count: n+1)
_=(0..<m).map { _ in
  let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
  let a = edge[0], b = edge[1]
  
  graph[b].append(a)
}
let x = Int(String(readLine()!))!
var visited = [Bool](repeating: false, count: n+1)
var tesk = 0

func dfs(node: Int) {
  for nextNode in graph[node] {
    if !visited[nextNode] {
      visited[nextNode] = true
      tesk += 1
      dfs(node: nextNode)
    }
  }
}

dfs(node: x)

print(tesk)
