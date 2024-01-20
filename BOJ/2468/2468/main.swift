//
//  main.swift
//  2468
//
//  Created by 이치훈 on 1/20/24.
//

let n = Int(String(readLine()!))!
var graph = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
var safeAreaCount = 1
var heights = [Int]()

for i in 0..<n {
  let rowLine = readLine()!.split(separator: " ").map { Int(String($0))! }
  graph[i] = rowLine
  
  for i in 0..<n {
    if !heights.contains(rowLine[i]) {
      heights.append(rowLine[i])
    }
  }
}
heights.sort()
var graphInit = graph

func dfs(x: Int, y: Int, _ height: Int) {
  
  if x < 0 || n <= x || y < 0 || n <= y || height >= graph[x][y] { return }

  graph[x][y] = height

  dfs(x: x+1, y: y, height)
  dfs(x: x-1, y: y, height)
  dfs(x: x, y: y+1, height)
  dfs(x: x, y: y-1, height)
}

for h in heights {
  var count = 0
  
  for i in 0..<n {
    for j in 0..<n {
      if h < graph[i][j]{
        
        dfs(x: i, y: j, h)
        count += 1
      }
    }
  }
  
  safeAreaCount = max(safeAreaCount, count)
  graph = graphInit
}

print(safeAreaCount)
