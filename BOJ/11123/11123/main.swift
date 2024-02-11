//
//  main.swift
//  11123
//
//  Created by 이치훈 on 2/11/24.
//

let t = Int(String(readLine()!))!
let moveX = [1, -1, 0, 0]
let moveY = [0, 0, 1, -1]

_=(1...t).map { _ in
  let hw = readLine()!.split(separator: " ").map { Int(String($0))! }
  let h = hw[0], w = hw[1]
  var graph = [[String]](repeating: [], count: h)
  _=(0..<h).map { i in
    graph[i] = Array(readLine()!).map { String($0) }
  }
  var visited = [[Bool]](repeating: [Bool](repeating: false, count: w), count: h)
  var count = 0
  
  func dfs(x: Int, y: Int) {
    if x < 0 || h <= x || y < 0 || w <= y || visited[x][y] || graph[x][y] != "#" { return }
    visited[x][y] = true
    
    for i in 0..<4 {
      let nx = x + moveX[i]
      let ny = y + moveY[i]
      
      dfs(x: nx, y: ny)
    }
  }
  
  for i in 0..<h {
    for j in 0..<w {
      if graph[i][j] == "#" && !visited[i][j] {
        dfs(x: i, y: j)
        count += 1
      }
    }
  }
  
  print(count)
}
