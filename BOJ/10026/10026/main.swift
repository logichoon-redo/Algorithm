//
//  main.swift
//  10026
//
//  Created by 이치훈 on 1/21/24.
//

let n = Int(String(readLine()!))!
var graph = [[String]](repeating: [], count: n)
var rgb = ["R", "G", "B", "RG"]
var rgCount = 0
var blueCount = 0
var nonRgbCount = 0

for i in 0..<n {
  let line = Array(readLine()!).map { String($0) }
  graph[i] = line
}

func dfs(x: Int, y: Int, findColor: String) {
  
  if x < 0 || n <= x || y < 0 || n <= y || graph[x][y] != findColor { return }
  
  if findColor == "R" || findColor == "G" {
    graph[x][y] = "RG"
  } else {
    graph[x][y] = "nil"
  }
  
  dfs(x: x+1, y: y, findColor: findColor)
  dfs(x: x-1, y: y, findColor: findColor)
  dfs(x: x, y: y+1, findColor: findColor)
  dfs(x: x, y: y-1, findColor: findColor)
}

for color in rgb {
  
  for i in 0..<n {
    for j in 0..<n {
      if graph[i][j] == color {
        dfs(x: i, y: j, findColor: color)
        
        if color != "RG" {
          if color != "B" {
            rgCount += 1
          } else {
            blueCount += 1
          }
        } else {
          nonRgbCount += 1
        }
        
        
      }
    }
  }
}

print("\(rgCount + blueCount) \(nonRgbCount + blueCount)")
