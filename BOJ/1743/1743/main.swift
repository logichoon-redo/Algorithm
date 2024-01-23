//
//  main.swift
//  1743
//
//  Created by 이치훈 on 1/23/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1], k = input[2]
var graph = [[Bool]](repeating: [Bool](repeating: false, count: m+1), count: n+1)
var count = 0
var maxSize = 0

for _ in 0..<k {
  let rc = readLine()!.split(separator: " ").map { Int(String($0))! }
  let r = rc[0], c = rc[1]
  graph[r][c] = true
}

func dfs(x: Int, y: Int) {
  if x <= 0 || n < x || y <= 0 || m < y || !graph[x][y] { return }
  
  graph[x][y] = false
  count += 1
  
  dfs(x: x+1, y: y)
  dfs(x: x-1, y: y)
  dfs(x: x, y: y+1)
  dfs(x: x, y: y-1)
}

for i in 1...n {
  for j in 1...m {
    if graph[i][j] == true {
      count = 0
      dfs(x: i, y: j)
      maxSize = max(maxSize, count)
    }
  }
}

print(maxSize)
