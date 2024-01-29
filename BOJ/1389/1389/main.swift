//
//  main.swift
//  1389
//
//  Created by 이치훈 on 1/29/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1]
var graph = [[Int]](repeating: [], count: n+1)
var answer = Int.max
var minKebin = 0

_=(0..<m).map { _ in
  let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
  let a = edge[0], b = edge[1]
  
  graph[a].append(b)
  graph[b].append(a)
}

func bfs(sn startNode: Int) -> Int {
  var queue = [(startNode, 0)]
  var index = 0
  var visited = [Bool](repeating: false, count: n+1)
  visited[startNode] = true
  var result = [Int]()
  
  while index < queue.count {
    let pop = queue[index]
    index += 1
    let node = pop.0, depth = pop.1
    result.append(depth)
    
    for nextNode in graph[node] {
      if !visited[nextNode] {
        visited[nextNode] = true
        queue.append((nextNode, depth + 1))
      }
    }
  }
  
  return result.reduce(0, +)
}

for i in 1...n {
  let output = bfs(sn: i)
  if output < answer {
    answer = output
    minKebin = i
  }
  
}

print(minKebin)
