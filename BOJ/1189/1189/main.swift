//
//  main.swift
//  1189
//
//  Created by 이치훈 on 2/5/24.
//

let rck = readLine()!.split(separator: " ").map { Int(String($0))! }
let r = rck[0], c = rck[1], k = rck[2]
var graph = [[String]](repeating: [], count: r)
_=(0..<r).map {
  graph[$0] = Array(readLine()!).map { String($0) }
}
var visited = [[Bool]](repeating: [Bool](repeating: false, count: c), count: r)
visited[r-1][0] = true
let moveX = [1, -1, 0, 0]
let moveY = [0, 0, 1, -1]
var count = 0

func dfs(x: Int, y: Int, depth: Int) {
  
  if depth == k && x == 0 && y == c-1 {
    count += 1
    return
  }
  
  for i in 0..<4 {
    let nx = x + moveX[i]
    let ny = y + moveY[i]
    
    if (0..<r) ~= nx && (0..<c) ~= ny 
        && graph[nx][ny] != "T" && !visited[nx][ny] {
      visited[nx][ny] = true
      dfs(x: nx, y: ny, depth: depth + 1)
      visited[nx][ny] = false
    }
  }
}

dfs(x: r-1, y: 0, depth: 1)
print(count)
