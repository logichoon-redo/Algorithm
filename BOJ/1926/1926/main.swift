//
//  main.swift
//  1926
//
//  Created by 이치훈 on 1/23/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1]
var graph = [[Int]](repeating: [], count: n)
var picturesSize = [Int]()
var count = 0

for i in 0..<n {
  graph[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}

func dfs(x: Int, y: Int) {
  if x < 0 || n <= x || y < 0 || m <= y || graph[x][y] != 1 { return }
  
  graph[x][y] = 0
  count += 1
  
  dfs(x: x+1, y: y)
  dfs(x: x-1, y: y)
  dfs(x: x, y: y+1)
  dfs(x: x, y: y-1)
}

for i in 0..<n {
  for j in 0..<m {
    if graph[i][j] == 1 {
      count = 0
      
      dfs(x: i, y: j)
      picturesSize.append(count)
    }
  }
}

print(picturesSize.count)
print(picturesSize.max() ?? 0)
