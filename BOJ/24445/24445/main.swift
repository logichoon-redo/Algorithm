//
//  main.swift
//  24445
//
//  Created by 이치훈 on 1/28/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1], r = input[2]
var graph = [[Int]](repeating: [], count: n+1)
var visited = [Bool](repeating: false, count: n+1)
var sequenceArray = [Int](repeating: 0, count: n+1)

_=(0..<m).map { _ in
  let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
  let a = edge[0], b = edge[1]
  
  graph[a].append(b)
  graph[b].append(a)
}

func bfs(sn startNode: Int) {
  var queue = [startNode]
  var index = 0
  var sequence = 1
  visited[startNode] = true
  
  while index < queue.count {
    let pop = queue[index]
    index += 1
    sequenceArray[pop] = sequence
    sequence += 1
    
    for nextNode in graph[pop].sorted(by: >) {
      if !visited[nextNode] {
        visited[nextNode] = true
        queue.append(nextNode)
      }
    }
  }
}

bfs(sn: r)

_=(1...n).map {
  print(sequenceArray[$0])
}
