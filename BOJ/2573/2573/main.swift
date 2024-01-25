//
//  main.swift
//  2573
//
//  Created by 이치훈 on 1/25/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1]
var graph = [[Int]](repeating: [], count: n)
var moveX = [1, -1, 0, 0]
var moveY = [0, 0, 1, -1]
var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
var count = 0
var year = 0
var minusMap = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)
var isSec = false

for i in 0..<n {
  graph[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}

func meltIce() {
  for i in 0..<n {
    for j in 0..<m {
      if minusMap[i][j] > 0 {
        graph[i][j] -= minusMap[i][j]
        minusMap[i][j] = 0
      }
    }
  }
}

func dfs(x: Int, y: Int) {
  if x < 0 || n <= x || y < 0 || m <= y || visited[x][y] || graph[x][y] <= 0 { return }
  
  visited[x][y] = true
  
  for i in 0..<4 {
    let nx = x + moveX[i]
    let ny = y + moveY[i]
    
    if graph[nx][ny] <= 0 {
      minusMap[x][y] += 1
      continue
    }
    
    dfs(x: nx, y: ny)
  }
}

for _ in 1...10000 {
  isSec = false
  visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
  
  for i in 0..<n {
    for j in 0..<m {
      if graph[i][j] > 0 && !visited[i][j] {
        dfs(x: i, y: j)
        
        if isSec {
          print(year)
          exit(0)
        }
        isSec = true
        meltIce()
      }
    }
  }
  
  year += 1
}

print(0)
