//
//  main.swift
//  2606
//
//  Created by 이치훈 on 1/16/24.
//

let n = Int(String(readLine()!))!
let m = Int(String(readLine()!))!
var graph = [[Int]](repeating: [], count: n + 1)
var visited = [Bool](repeating: false, count: n + 1)

for _ in 0..<m {
  let input = readLine()!.split(separator: " ").map { Int(String($0))! }
  
  graph[input[0]].append(input[1])
  graph[input[1]].append(input[0])
}

func dfs(_ node: Int) {
  visited[node] = true
  
  for i in graph[node] {
    if !visited[i]{
      dfs(i)
    }
  }
}

dfs(1)
print(visited.filter{ $0 }.count - 1)
