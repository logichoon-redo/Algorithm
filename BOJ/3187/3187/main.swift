//
//  main.swift
//  3187
//
//  Created by 이치훈 on 1/26/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let r = input[0], c = input[1]
var graph = [[String]](repeating: [], count: r)
var wolfTempCount = 0
var sheepTempCount = 0
var wolfCount = 0
var sheepCount = 0

for i in 0..<r {
  graph[i] = Array(readLine()!).map { String($0) }
}

func dfs(x: Int, y: Int) {
  if x < 0 || r <= x || y < 0 || c <= y || graph[x][y] == "#" { return }
  
  if graph[x][y] == "v" {
    wolfTempCount += 1
  } else if graph[x][y] == "k" {
    sheepTempCount += 1
  }
  
  graph[x][y] = "#"
  
  dfs(x: x+1, y: y)
  dfs(x: x-1, y: y)
  dfs(x: x, y: y+1)
  dfs(x: x, y: y-1)
}

for i in 0..<r {
  for j in 0..<c {
    if graph[i][j] != "#" {
      dfs(x: i, y: j)
      
      if sheepTempCount > wolfTempCount {
        wolfTempCount = 0
      } else {
        sheepTempCount = 0
      }
      
      wolfCount += wolfTempCount
      sheepCount += sheepTempCount
      
      wolfTempCount = 0
      sheepTempCount = 0
    }
  }
}

print("\(sheepCount) \(wolfCount)")
