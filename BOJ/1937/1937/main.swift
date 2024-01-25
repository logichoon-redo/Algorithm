//
//  main.swift
//  1937
//
//  Created by 이치훈 on 1/25/24.
//

let n = Int(String(readLine()!))!
var graph = [[Int]](repeating: [], count: n)
var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
let moveX = [1, -1, 0, 0]
let moveY = [0, 0, 1, -1]
var longRoute = 0

for i in 0..<n {
  graph[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}


func dfs(x: Int, y: Int, d depth: Int) {
  if x < 0 || n <= x || y < 0 || n <= y || visited[x][y] { return }
//  print("x: \(x), y: \(y), value: \(graph[x][y])")
  
  visited[x][y] = true
  longRoute = max(longRoute, depth)
  
  for i in 0..<4 {
    let nx = x + moveX[i]
    let ny = y + moveY[i]
    
    if nx < 0 || n <= nx || ny < 0 || n <= ny
        || graph[nx][ny] > graph[x][y] {
      
      dfs(x: nx, y: ny, d: depth + 1)
    }
    
  }
}

for i in 0..<n {
  for j in 0..<n {
    visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
    dfs(x: i, y: j, d: 1)
//    print("return")
  }
}

print(longRoute)
