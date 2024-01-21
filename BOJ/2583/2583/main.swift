//
//  main.swift
//  2583
//
//  Created by 이치훈 on 1/21/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = input[0], n = input[1], k = input[2]
var graph = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
var areaSizes = [Int]()
var size = 0

for _ in 0..<k {
  let point = readLine()!.split(separator: " ").map { Int(String($0))! }
  let startX = point[0], startY = point[1], endX = point[2], endY = point[3]
  
  for i in startX..<endX {
    for j in startY..<endY {
      graph[i][j] = true
    }
  }
}

func dfs(x: Int, y: Int) {
  
  if x < 0 || n <= x || y < 0 || m <= y || graph[x][y] { return }
  
  size += 1
  graph[x][y] = true
  
  dfs(x: x+1, y: y)
  dfs(x: x-1, y: y)
  dfs(x: x, y: y+1)
  dfs(x: x, y: y-1)
}

for i in 0..<n {
  for j in 0..<m {
    if !graph[i][j] {
      
      dfs(x: i, y: j)
      
      areaSizes.append(size)
      size = 0
    }
  }
}

areaSizes.sort()
print(areaSizes.count)
print(areaSizes.map { String($0) }.joined(separator: " "))
