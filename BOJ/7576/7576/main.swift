//
//  main.swift
//  7576
//
//  Created by 이치훈 on 2/1/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = input[0], n = input[1]
var graph = [[Int]](repeating: [], count: n)
var queue = [(Int, Int)]()
let moveX = [1, -1, 0, 0]
let moveY = [0, 0, 1, -1]
var count = Int.min
_=(0..<n).map { i in
  graph[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
  
  _=(0..<m).map { j in
    if graph[i][j] == 1 {
      queue.append((i, j))
    }
  }
}

func bfs() {
  var index = 0
  
  while index < queue.count {
    let pop = queue[index]
    index += 1
    let x = pop.0, y = pop.1
    
    for i in 0..<4 {
      let nx = x + moveX[i]
      let ny = y + moveY[i]
      
      if nx < 0 || n <= nx || ny < 0 || m <= ny { continue }
      
      if graph[nx][ny] == 0 {
        graph[nx][ny] = graph[x][y] + 1
        queue.append((nx, ny))
      }
    }
  }
}

bfs()

for i in 0..<n {
  for j in 0..<m {
    if graph[i][j] == 0 { print(-1); exit(0) }
    count = max(count, graph[i][j])
  }
}

print(count - 1)
