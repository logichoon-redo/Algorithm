//
//  main.swift
//  15240
//
//  Created by 이치훈 on 1/26/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let r = input[0], c = input[1]
var graph = [[Int]](repeating: [], count: r)
var visited = [[Bool]](repeating: [Bool](repeating: false, count: c), count: r)

for i in 0..<r {
  graph[i] = Array(readLine()!).map { Int(String($0))! }
}
let change = readLine()!.split(separator: " ").map { Int(String($0))! }
let changeX = change[0], changeY = change[1], changeNum = change[2]
let beforeNum = graph[changeX][changeY]

func dfs(x: Int, y: Int) {
  if x < 0 || r <= x || y < 0 || c <= y || visited[x][y] { return }
  if graph[x][y] != beforeNum { return }
  
  graph[x][y] = changeNum
  visited[x][y] = true
  
  dfs(x: x+1, y: y)
  dfs(x: x-1, y: y)
  dfs(x: x, y: y+1)
  dfs(x: x, y: y-1)
}

dfs(x: changeX, y: changeY)

for i in 0..<r {
  for j in 0..<c {
    print(graph[i][j], terminator: "")
  }
  print("")
}
