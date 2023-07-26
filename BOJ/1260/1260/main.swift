//
//  main.swift
//  1260
//
//  Created by 이치훈 on 2023/07/26.
//

let nmv = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
let n = nmv[0]
let m = nmv[1]
let v = nmv[2]
var graph: [[Int]] = Array(repeating: [], count: n + 1)
var check = Array(repeating: false, count: n + 1)
var result = ""

for _ in 1...m {
  let relation = readLine()!.split(separator: " ").map {
    Int(String($0))!
  }
  let a = relation[0]
  let b = relation[1]
  
  graph[a].append(b)
  graph[b].append(a)
  graph[a].sort()
  graph[b].sort()
}

func DFS(_ now: Int) {
  check[now] = true
  result += "\(now) "
  for i in graph[now] {
    if !check[i] {
      DFS(i)
    }
  }
}

func BFS(_ now: Int) {
  var needVisited: [Int] = [now]
  var visited = Set<Int>()
  
  while !needVisited.isEmpty {
    let node = needVisited.removeFirst()
    if !visited.contains(node) {
      visited.insert(node)
      result += "\(node) "
      needVisited.append(contentsOf: graph[node])
    }
  }
}

DFS(v)
print(result)
result = ""
BFS(v)
print(result)
