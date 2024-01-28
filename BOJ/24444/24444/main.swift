//
//  main.swift
//  24444
//
//  Created by 이치훈 on 1/28/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1], r = input[2]
var graph = [[Int]](repeating: [], count: n+1)
var visited = [Bool](repeating: false, count: n+1)
var sequenceArray = [Int](repeating: 0, count: n+1)

_=(1...m).map { _ in
  let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
  let a = edge[0], b = edge[1]
  
  graph[a].append(b)
  graph[b].append(a)
}

_=(1...n).map {
  graph[$0].sort()
}

func bfs(n node: Int) {
  var queue = [node]
  var index = 0
  var sequence = 0
  visited[node] = true
  
  while index < queue.count {
    let pop = queue[index]
    index += 1
    sequence += 1
    sequenceArray[pop] = sequence
    
    for nextNode in graph[pop] {
      if !visited[nextNode] {
        visited[nextNode] = true
        queue.append(nextNode)
      }
    }
  }
}

bfs(n: r)

_=(1...n).map {
  print(sequenceArray[$0])
}
