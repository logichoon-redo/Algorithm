//
//  main.swift
//  1303
//
//  Created by 이치훈 on 1/23/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1]
var graph = [[String]](repeating: [], count: m)
var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: m)
var whiteTempSum = 0
var blueTempSum = 0
var whiteSum = 0
var blueSum = 0

for i in 0..<m {
  graph[i] = Array(readLine()!).map { String($0) }
}

func dfs(x: Int, y: Int, findColor: String) {
  if x < 0 || m <= x || y < 0 || n <= y ||
      visited[x][y] || graph[x][y] != findColor { return }
  
  visited[x][y] = true
  
  switch graph[x][y] {
  case "W": whiteTempSum += 1
  case "B": blueTempSum += 1
  default: break
  }
  
  dfs(x: x+1, y: y, findColor: findColor)
  dfs(x: x-1, y: y, findColor: findColor)
  dfs(x: x, y: y+1, findColor: findColor)
  dfs(x: x, y: y-1, findColor: findColor)
}

for i in 0..<m {
  for j in 0..<n {
    if !visited[i][j] {
      whiteTempSum = 0
      blueTempSum = 0
      
      dfs(x: i, y: j, findColor: graph[i][j])
  
      switch graph[i][j] {
      case "W": whiteSum += Int(pow(Float(whiteTempSum), 2))
      case "B": blueSum += Int(pow(Float(blueTempSum), 2))
      default: break
      }
    }
  }
}

print("\(whiteSum) \(blueSum)")
