//
//  main.swift
//  2667
//
//  Created by 이치훈 on 2023/08/02.
//

let n = Int(String(readLine()!))!
var graph = [[Int]]()
var visited = Array(repeating: Array(repeating: false, count: n + 1), count: n + 1)
let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]
var count = 0

for _ in 1...n {
  let nums = readLine()!.map {
    Int(String($0))!
  }
  graph.append(nums)
}

func dfs(_ x: Int, _ y: Int) {
  count += 1
  visited[x][y] = true
  for i in 0...3 {
    let nx = x + dx[i]
    let ny = y + dy[i]
    if 0 <= nx && nx < n && 0 <= ny && ny < n {
      if graph[nx][ny] == 1 && !visited[nx][ny] {
        dfs(nx, ny)
      }
    }
  }
}

var result = [Int]()
for i in 0..<n {
  for j in 0..<n {
    if graph[i][j] == 1 && !visited[i][j] {
      count = 0
      dfs(i, j)
      result.append(count)
    }
  }
}

print(result.count)
result.sort()
_=result.map {
  print($0)
}
