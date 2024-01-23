//
//  main.swift
//  13565
//
//  Created by 이치훈 on 1/23/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = input[0], n = input[1]
var graph = [[Int]](repeating: [], count: m)

for i in 0..<m {
  graph[i] = Array(readLine()!).map { Int(String($0))! }
}

func dfs(x: Int, y: Int) {
  if x < 0 || y < 0 || n <= y || graph[x][y] == 1 { return }
  
  if x >= m-1 { 
    print("YES")
    exit(0)
  }
  
  graph[x][y] = 1
  
  dfs(x: x+1, y: y)
  dfs(x: x-1, y: y)
  dfs(x: x, y: y+1)
  dfs(x: x, y: y-1)
}

for i in 0..<n {
    dfs(x: 0, y: i)
}

print("NO")
