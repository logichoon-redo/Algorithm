//
//  main.swift
//  14940
//
//  Created by 이치훈 on 1/28/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1]
var graph = [[String]](repeating: [], count: n)
var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
var startX = 0, startY = 0
let moveX = [1, -1, 0, 0]
let moveY = [0, 0, 1, -1]

_=(0..<n).map {
  graph[$0] = readLine()!.split(separator: " ").map { String($0) }
  if let startIndex = graph[$0].firstIndex(of: "2") {
    startX = $0
    startY = startIndex
  }
}

for i in 0..<n {
  for j in 0..<m {
    if graph[i][j] == "1" {
      graph[i][j] = "-1"
    }
  }
}

func bfs(sx startX: Int, sy startY: Int) {
  var queue = [(startX, startY, 0)]
  var index = 0
  
  while index < queue.count {
    let pop = queue[index]
    let x = pop.0, y = pop.1, depth = pop.2
    index += 1
    
    graph[x][y] = String(depth)
    
    for i in 0..<4 {
      let nx = x + moveX[i]
      let ny = y + moveY[i]
      
      if nx < 0 || n <= nx || ny < 0 || m <= ny ||
          visited[nx][ny] || graph[nx][ny] == "0" { continue }
      
      visited[nx][ny] = true
      
      queue.append((nx, ny, depth + 1))
    }
  }
}

bfs(sx: startX, sy: startY)

_=graph.map {
  print($0.joined(separator: " "))
}
