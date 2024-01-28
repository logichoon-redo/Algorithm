//
//  main.swift
//  7562
//
//  Created by 이치훈 on 1/28/24.
//

let T = Int(String(readLine()!))!

for _ in 1...T {
  let n = Int(String(readLine()!))!
  let startPoint = readLine()!.split(separator: " ").map { Int(String($0))! }
  let sx = startPoint[0], sy = startPoint[1]
  let finalPoint = readLine()!.split(separator: " ").map { Int(String($0))! }
  let fx = finalPoint[0], fy = finalPoint[1]
  var graph = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
  let moveX = [-2, -1, +1, +2, +2, +1, -1, -2]
  let moveY = [-1, -2, -2, -1, +1, +2, +2, +1]
  var answer = 0
  
  func bfs(sx: Int, sy: Int) {
    var queue = [(sx, sy, 0)]
    var index = 0
    graph[sx][sy] = true
    
    while index < queue.count {
      let pop = queue[index]
      let x = pop.0, y = pop.1, depth = pop.2
      
      if fx == x && fy == y { 
        answer = depth
        return
      }
      
      index += 1
      
      for i in 0..<8 {
        let nx = x + moveX[i]
        let ny = y + moveY[i]
        
        if nx < 0 || n <= nx || ny < 0 || n <= ny || graph[nx][ny] { continue }
        
        graph[nx][ny] = true
        queue.append((nx, ny, depth + 1))
      }
    }
  }
  
  bfs(sx: sx, sy: sy)
  print(answer)
}
