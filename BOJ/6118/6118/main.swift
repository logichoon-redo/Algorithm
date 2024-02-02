//
//  main.swift
//  6118
//
//  Created by 이치훈 on 2/2/24.
//

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0], m = nm[1]
var graph = [[Int]](repeating: [], count: n+1)
var rooms = [(Int, Int)]()
var maxDepth = 0

_=(0..<m).map { _ in
  let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
  let a = edge[0], b = edge[1]
  
  graph[a].append(b)
  graph[b].append(a)
}

func bfs() {
  var queue = [(1, 0)]
  var index = 0
  var visited = [Bool](repeating: false, count: n+1)
  visited[1] = true
  
  while index < queue.count {
    let pop = queue[index]
    index += 1
    let node = pop.0, depth = pop.1
    
    maxDepth = max(maxDepth, depth)
    if maxDepth == depth {
      rooms.append((node, depth))
    }
    
    for nextNode in graph[node] {
      if !visited[nextNode] {
        visited[nextNode] = true
        queue.append((nextNode, depth + 1))
      }
    }
  }
}

bfs()

rooms = rooms.filter { $0.1 == maxDepth }.sorted(by: <)

print(rooms[0].0, maxDepth, rooms.count)
