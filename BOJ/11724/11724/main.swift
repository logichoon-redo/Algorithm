//
//  main.swift
//  11724
//
//  Created by 이치훈 on 1/20/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let node = input[0], edge = input[1]
var graph = [[Int]](repeating: [Int](), count: node+1)
var visited = [Bool](repeating: false, count: node+1)
var elementCount = 0

for _ in 0..<edge {
  let edgeLine = readLine()!.split(separator: " ").map { Int(String($0))! }
  let a = edgeLine[0]
  let b = edgeLine[1]
  
  graph[a].append(b)
  graph[b].append(a)
}

func dfs(node: Int) {
  if visited[node] { return }
  
  visited[node] = true
  for i in 0..<graph[node].count {
    
    dfs(node: graph[node][i])
  }
}

for i in 1...node {
  if !visited[i] {
    dfs(node: i)
    elementCount += 1
  }
}

print(elementCount)
