//
//  main.swift
//  1987
//
//  Created by 이치훈 on 1/22/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let r = input[0], c = input[1]
var graph = [[Int]](repeating: [], count: r)
let moveX = [1, -1, 0, 0]
let moveY = [0, 0, 1, -1]
var answer = 0

for i in 0..<r {
  graph[i] = readLine()!.map { Int($0.asciiValue!) - 65 }
}

func dfs(x: Int, y: Int, alpha: Int, count: Int) {
  answer = max(answer, count)
  for i in 0..<4 {
    let nextX = x + moveX[i]
    let nextY = y + moveY[i]
    
    if nextX < 0 || r <= nextX || nextY < 0 || c <= nextY { continue }
    let n = 1 << graph[nextX][nextY]
    
    if n & alpha == 0 {
      dfs(x: nextX, y: nextY, alpha: alpha | n, count: count + 1)
    }
  }
}

dfs(x: 0, y: 0, alpha: 1 << graph[0][0], count: 1)
print(answer)
