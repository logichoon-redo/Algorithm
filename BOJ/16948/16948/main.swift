//
//  main.swift
//  16948
//
//  Created by 이치훈 on 1/31/24.
//

let n = Int(String(readLine()!))!
let rc = readLine()!.split(separator: " ").map { Int(String($0))! }
let startR = rc[0], startC = rc[1], finalR = rc[2], finalC = rc[3]
var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
let moveR = [-2, -2, 0, 0, +2, +2]
let moveC = [-1, +1, -2, +2, -1, +1]

func bfs(sr startR: Int, sc startC: Int) {
  var queue = [(startR, startC, 0)]
  var index = 0
  visited[startR][startC] = true
  
  while index < queue.count {
    let pop = queue[index]
    index += 1
    let r = pop.0, c = pop.1, depth = pop.2
    
    if r == finalR && c == finalC {
      print(depth)
      return
    }
    
    for i in 0..<6{
      let nr = r + moveR[i]
      let nc = c + moveC[i]
      
      if nr < 0 || n <= nr || nc < 0 || n <= nc || visited[nr][nc] { continue }
      visited[nr][nc] = true
      queue.append((nr, nc, depth + 1))
    }
  }
  
  print(-1)
}

bfs(sr: startR, sc: startC)
