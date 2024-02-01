//
//  main.swift
//  18352
//
//  Created by 이치훈 on 2/2/24.
//

let nmkx = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nmkx[0], m = nmkx[1], k = nmkx[2], x = nmkx[3]
var graph = [[Int]](repeating: [], count: n+1)
var answer = [Int]()
_=(0..<m).map { i in
  let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
  let a = edge[0], b = edge[1]
  
  graph[a].append(b)
}

func bfs(sn startNode: Int) {
  var queue = [(startNode, 0)]
  var index = 0
  var visited = [Bool](repeating: false, count: n+1)
  visited[startNode] = true
  
  while index < queue.count {
    let pop = queue[index]
    let node = pop.0, depth = pop.1
    index += 1
    
    if depth == k {
      answer.append(node)
      continue
    }
    
    for nextNode in graph[node] {
      if !visited[nextNode] {
        visited[nextNode] = true
        
        queue.append((nextNode, depth + 1))
      }
    }
  }
}

bfs(sn: x)

!answer.isEmpty ? _=answer.sorted().map{ print($0) } : print(-1)
