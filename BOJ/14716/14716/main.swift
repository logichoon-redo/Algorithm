//
//  main.swift
//  14716
//
//  Created by 이치훈 on 1/19/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = input[0]
let n = input[1]
var graph = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
var charCount = 0

for i in 0..<m {
  let nLine = readLine()!.split(separator: " ").map { Int(String($0))! }
  graph[i] = nLine
}

func dfs(i: Int, j: Int) {
  
  if i < 0 || m <= i || j < 0 || n <= j || graph[i][j] == 0 { return }
  graph[i][j] = 0
  
  dfs(i: i+1, j: j)
  dfs(i: i-1, j: j)
  dfs(i: i, j: j+1)
  dfs(i: i, j: j-1)
  dfs(i: i+1, j: j+1)
  dfs(i: i+1, j: j-1)
  dfs(i: i-1, j: j+1)
  dfs(i: i-1, j: j-1)
}

for i in 0..<m {
  for j in 0..<n {
    if graph[i][j] == 1 {
      
      dfs(i: i, j: j)
      charCount += 1
    }
  }
}

print(charCount)
