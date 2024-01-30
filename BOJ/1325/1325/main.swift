//
//  main.swift
//  1325
//
//  Created by 이치훈 on 1/30/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1]
var graph = [[Int]](repeating: [], count: n+1)
var answer = [Int]()
var maxValue = Int.min
var output = [Int](repeating: 0, count: n+1)

_=(0..<m).map { _ in
  let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
  let a = edge[0], b = edge[1]
  
  graph[b].append(a)
}

func bfs(sn startNode: Int) -> Int {
  var queue = [startNode]
  var index = 0
  var visited = [Bool](repeating: false, count: n+1)
  var computerCount = 0
  visited[startNode] = true
  
  while index < queue.count {
    let pop = queue[index]
    let node = pop
    index += 1
    computerCount += 1
    
    for nextNode in graph[node] {
      if !visited[nextNode] {
        visited[nextNode] = true
        queue.append(nextNode)
      }
    }
  }
  
  return computerCount
}

for i in 1...n {
  output[i] = bfs(sn: i)
  maxValue = max(maxValue, output[i])
}

for i in 1...n {
  if output[i] == maxValue {
    print(i, terminator: " ")
  }
}
