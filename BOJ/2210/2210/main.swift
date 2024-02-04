//
//  main.swift
//  2210
//
//  Created by 이치훈 on 2/4/24.
//

var graph = [[Int]](repeating: [], count: 5)
_=(0..<5).map { i in
  graph[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}
let moveX = [1, -1, 0, 0]
let moveY = [0, 0, 1, -1]
var visited = [Bool](repeating: false, count: 1000001)

func dfs(x: Int, y: Int, depth: Int, num: Int) {
  if !((0..<5) ~= x) || !((0..<5) ~= y) { return }
  
  var nextNum = num
  nextNum += graph[x][y]
  
  if depth == 5 {
    visited[nextNum] = true
    return
  }
  
  nextNum *= 10
  
  for i in 0..<4 {
    let nx = x + moveX[i]
    let ny = y + moveY[i]
    
    dfs(x: nx, y: ny, depth: depth + 1, num: nextNum)
  }
}

for i in 0..<5 {
  for j in 0..<5 {
    dfs(x: i, y: j, depth: 0, num: 0)
  }
}

print(visited.filter { $0 == true }.count)
