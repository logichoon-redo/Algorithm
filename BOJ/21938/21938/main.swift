//
//  main.swift
//  21938
//
//  Created by 이치훈 on 2/6/24.
//

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0], m = nm[1]
var graph = [[Int]](repeating: [], count: n)
let moveX = [1, -1, 0, 0]
let moveY = [0, 0, 1, -1]
var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
var count = 0

_=(0..<n).map { i in
  let pixel = readLine()!.split(separator: " ").map { Int(String($0))! }
  var temp = 0
  _=(1...m*3).map { j in
    temp += pixel[j-1]
    if j % 3 == 0 {
      graph[i].append(temp / 3)
      temp = 0
    }
  }
}

let t = Int(String(readLine()!))!

func dfs(x: Int, y: Int) {
  if x < 0 || n <= x || y < 0 || m <= y ||
      visited[x][y] || graph[x][y] < t { return }
  visited[x][y] = true
  
  for i in 0..<4 {
    let nx = x + moveX[i]
    let ny = y + moveY[i]
    
    dfs(x: nx, y: ny)
  }
}

for i in 0..<n {
  for j in 0..<m {
    if !visited[i][j] && graph[i][j] >= t {
      dfs(x: i, y: j)
      count += 1
    }
  }
}

print(count)
