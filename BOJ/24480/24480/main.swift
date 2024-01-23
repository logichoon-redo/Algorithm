//
//  main.swift
//  24480
//
//  Created by 이치훈 on 1/23/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1], r = input[2]
var graph = [[Int]](repeating: [], count: n+1)
var visited = [Bool](repeating: false, count: n+1)
var visitedSequen = [Int](repeating: 0, count: n+1)
var st = 0

for _ in 0..<m {
  let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
  let a = edge[0], b = edge[1]
  
  graph[a].append(b)
  graph[b].append(a)
}

func dfs(d depth: Int) {
  if visited[depth] { return }
  
  visited[depth] = true
  st += 1
  visitedSequen[depth] = st
  
  for i in graph[depth].sorted(by: >) {
    dfs(d: i)
  }
}

dfs(d: r)

for i in 1...n {
  print(visitedSequen[i])
}
