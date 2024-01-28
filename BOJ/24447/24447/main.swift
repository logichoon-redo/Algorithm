//
//  main.swift
//  24447
//
//  Created by 이치훈 on 1/28/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1], r = input[2]
var graph = [[Int]](repeating: [], count: n+1)
var visited = [Bool](repeating: false, count: n+1)
var dtArray = [Int](repeating: 0, count: n+1)

_=(0..<m).map { _ in
  let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
  let a = edge[0], b = edge[1]
  
  graph[a].append(b)
  graph[b].append(a)
}

func bfs(sn startNode: Int) {
  var queue = [(startNode, 0)]
  var index = 0
  var sequence = 0
  visited[startNode] = true
  
  while index < queue.count {
    let pop = queue[index]
    let node = pop.0, depth = pop.1
    index += 1
    sequence += 1
    dtArray[node] = depth * sequence
    
    for nextNode in graph[node].sorted() {
      if !visited[nextNode] {
        visited[nextNode] = true
        queue.append((nextNode, depth + 1))
      }
    }
  }
}

bfs(sn: r)

print(dtArray.reduce(0, +))
