//
//  main.swift
//  2206
//
//  Created by 이치훈 on 2/26/24.
//

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0], m = nm[1]
var visited = [[[Bool]]](repeating: [[Bool]](repeating: [Bool](repeating: false, count: 2), count: m), count: n)
var graph = [[Int]](repeating: [], count: n)
var result = -1
let moveX = [1, -1, 0, 0]
let moveY = [0, 0, 1, -1]

_=(0..<n).map {
  graph[$0] = Array(readLine()!.map{ Int(String($0))! })
}

func bfs() {
  // isBroken == 1 일 때 벽을 부술 수 있는 기회가 있음
  var queue = [(node: (x: 0, y: 0, route: 1), isBroken: 1)]
  var index = 0
  visited[0][0][1] = true
  
  while index < queue.count {
    let pop = queue[index]
    index += 1
    
    if pop.node.x == n-1 && pop.node.y == m-1 {
      result = pop.node.route
      break
    }
    
    for i in 0..<4 {
      let nx = pop.node.x + moveX[i]
      let ny = pop.node.y + moveY[i]
      
      if nx < 0 || n <= nx || ny < 0 || m <= ny || visited[nx][ny][pop.isBroken] { continue }
      
      if graph[nx][ny] == 1 && pop.isBroken == 1 {
        visited[nx][ny][0] = true
        queue.append(((nx, ny, pop.node.route + 1), 0))
      }
      
      if graph[nx][ny] == 0 {
        visited[nx][ny][pop.isBroken] = true
        queue.append(((nx, ny, pop.node.route + 1), pop.isBroken))
      }
    }
  }
}

bfs()

print(result)
