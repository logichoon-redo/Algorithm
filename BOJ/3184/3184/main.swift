//
//  main.swift
//  3184
//
//  Created by 이치훈 on 1/23/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let r = input[0], c = input[1]
var graph = [[String]](repeating: [], count: r)
var sheepTempCount = 0
var wolfTempCount = 0
var sheepCount = 0
var wolfCount = 0

for i in 0..<r {
  graph[i] = Array(readLine()!).map { String($0) }
}

func dfs(x: Int, y: Int) {
  if x < 0 || r <= x || y < 0 || c <= y || graph[x][y] == "#" { return }
  
  switch graph[x][y] {
  case "o": sheepTempCount += 1
  case "v": wolfTempCount += 1
  default : break
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
      sheepTempCount = 0
      wolfTempCount = 0
      
      dfs(x: i, y: j)
      
      if sheepTempCount > wolfTempCount {
        wolfTempCount = 0
      } else {
        sheepTempCount = 0
      }
      
      sheepCount += sheepTempCount
      wolfCount += wolfTempCount
    }
  }
}

print("\(sheepCount) \(wolfCount)")
