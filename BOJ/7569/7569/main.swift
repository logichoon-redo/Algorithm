//
//  main.swift
//  7569
//
//  Created by 이치훈 on 2/1/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = input[0], n = input[1], H = input[2]
var graph = [[[Int]]](repeating: [[Int]](repeating: [], count: n), count: H)
let moveH = [1, -1, 0, 0, 0, 0]
let moveX = [0, 0, 1, -1, 0, 0]
let moveY = [0, 0, 0, 0, 1, -1]
var queue = [(Int, Int, Int)]()
var count = Int.min
_=(0..<H).map { i in
  _=(0..<n).map { j in
    graph[i][j] = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    for k in 0..<m {
      if graph[i][j][k] == 1 {
        queue.append((i, j, k))
      }
    }
  }
}

func bfs() {
  var index = 0
  
  while index < queue.count {
    let pop = queue[index]
    index += 1
    let h = pop.0, x = pop.1, y = pop.2
    
    for i in 0..<6 {
      let nh = h + moveH[i]
      let nx = x + moveX[i]
      let ny = y + moveY[i]
      
      if nx < 0 || n <= nx || ny < 0 || m <= ny || nh < 0 || H <= nh { continue }
      
      if graph[nh][nx][ny] == 0 {
        queue.append((nh, nx, ny))
        graph[nh][nx][ny] = graph[h][x][y] + 1
      }
    }
  }
}

bfs()

for i in 0..<H {
  for j in 0..<n {
    for k in 0..<m {
      if graph[i][j][k] == 0 { print(-1); exit(0) }
      count = max(count, graph[i][j][k] - 1)
    }
  }
}

print(count)
