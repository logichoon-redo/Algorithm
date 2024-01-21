//
//  main.swift
//  2644
//
//  Created by 이치훈 on 1/21/24.
//

let n = Int(String(readLine()!))!
let findRealtion = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = Int(String(readLine()!))!
var graph = [[Int]](repeating: [], count: n+1)
var visited = [Bool](repeating: false, count: n+1)
var result = -1

for _ in 0..<m {
  let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
  let parent = edge[0], son = edge[1]
  
  graph[parent].append(son)
  graph[son].append(parent)
}

func dfs(d depth: Int, count relationCount: Int) {
  if visited[depth] { return }
  
  visited[depth] = true
  
  if depth == findRealtion[1] {
    result = relationCount
    return
  }
  
  for i in graph[depth] {
    dfs(d: i, count: relationCount + 1)
  }
}

dfs(d: findRealtion[0], count: 0)

print(result)
