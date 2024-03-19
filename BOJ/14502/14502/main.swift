//
//  main.swift
//  14502
//
//  Created by 이치훈 on 2/1/24.
//

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0], m = nm[1]
var graph = [[Int]](repeating: [], count: n)
var virus = [(Int, Int)]()
let moveX = [1, -1, 0, 0]
let moveY = [0, 0, 1, -1]
var answer = 0
_=(0..<n).map { i in
  graph[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}
for i in 0..<n {
  for j in 0..<m {
    if graph[i][j] == 2 {
      virus.append((i, j))
    }
  }
}

func dfs(d depth: Int) {
  if depth == 3 {
    let temp = graph
    bfs()
    graph = temp
    return
  }
  
  for i in 0..<n {
    for j in 0..<m {
      if graph[i][j] != 0 { continue }
      graph[i][j] = 1
      dfs(d: depth + 1)
      graph[i][j] = 0
    }
  }
}

func bfs() {
  var queue = virus
  var index = 0
  
  while index < queue.count {
    let pop = queue[index]
    index += 1
    let x = pop.0, y = pop.1
    
    
    for i in 0..<4 {
      let nx = x + moveX[i]
      let ny = y + moveY[i]
      
      if nx < 0 || n <= nx || ny < 0 || m <= ny || graph[nx][ny] != 0 { continue }
      graph[nx][ny] = 2
      queue.append((nx, ny))
    }
  }
  
  answer = max(answer, graph.map { $0.filter {$0 == 0}.count }.reduce(0, +))
}

dfs(d: 0)
print(answer)
