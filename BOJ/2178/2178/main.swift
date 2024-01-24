//
//  main.swift
//  2178
//
//  Created by 이치훈 on 1/24/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1]
var map = [[Int]](repeating: [], count: n)
let moveX = [1, -1, 0, 0]
let moveY = [0, 0, 1, -1]

for i in 0..<n {
  map[i] = Array(readLine()!).map { Int(String($0))! }
}

func bfs() {
  var queue = [(0, 0)]
  
  while !queue.isEmpty {
    let pop = queue.removeFirst()
    
    for i in 0..<4 {
      let nx = pop.0 + moveX[i]
      let ny = pop.1 + moveY[i]
      
      if nx < 0 || n <= nx || ny < 0 || m <= ny || map[nx][ny] == 0 { continue }
      if map[nx][ny] == 1 {
        map[nx][ny] = map[pop.0][pop.1] + 1
        queue.append((nx, ny))
      }
    }
    
  }
}

bfs()
print(map[n-1][m-1])
