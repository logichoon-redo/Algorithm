//
//  main.swift
//  1753
//
//  Created by 이치훈 on 2/1/24.
//

let ve = readLine()!.split(separator: " ").map { Int(String($0))! }
let v = ve[0], e = ve[1]
let k = Int(String(readLine()!))!
var graph = [[(Int, Int)]](repeating: [], count: v+1)
var answer = [Int](repeating: Int.max, count: v+1)
_=(0..<e).map { _ in
  let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
  let a = edge[0], b = edge[1], w = edge[2]
  
  graph[a].append((b, w))
}

func bfs(sn startNode: Int) {
  var queue = [(startNode, 0)]
  var index = 0
  
  while index < queue.count {
    let pop = queue[index]
    index += 1
    let node = pop.0, weightSum = pop.1
    
    answer[node] = min(answer[node], weightSum)
    
    for nextNode in graph[node] {
      if weightSum + nextNode.1 < answer[nextNode.0] {
        queue.append((nextNode.0, weightSum + nextNode.1))
      }
    }
  }
}

bfs(sn: k)

_=(1...v).map {
  if answer[$0] == Int.max {
    print("INF")
  } else {
    print(answer[$0])
  }
}
