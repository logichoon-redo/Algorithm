//
//  main.swift
//  4963
//
//  Created by 이치훈 on 1/19/24.
//

func dfs(x: Int, y: Int, graph: inout [[Int]], w: Int, h: Int) {

  if x < 0 || x >= w || y < 0 || y >= h || graph[y][x] == 0 { return }
  
  graph[y][x] = 0
  
  dfs(x: x+1, y: y, graph: &graph, w: w, h: h)
  dfs(x: x-1, y: y, graph: &graph, w: w, h: h)
  dfs(x: x, y: y+1, graph: &graph, w: w, h: h)
  dfs(x: x, y: y-1, graph: &graph, w: w, h: h)
  dfs(x: x-1, y: y+1, graph: &graph, w: w, h: h)
  dfs(x: x-1, y: y-1, graph: &graph, w: w, h: h)
  dfs(x: x+1, y: y+1, graph: &graph, w: w, h: h)
  dfs(x: x+1, y: y-1, graph: &graph, w: w, h: h)
}

while true {
  let input = readLine()!.split(separator: " ").map { Int(String($0))! }
  let w = input[0], h = input[1]
  if w == 0 && h == 0 { break }
  var graph = [[Int]](repeating: [Int](repeating: 0, count: w), count: h)
  var landCount = 0
  
  for i in 0..<h {
    let wLine = readLine()!.split(separator: " ").map { Int(String($0))! }
    graph[i] = wLine
  }
  
  for i in 0..<h {
    for j in 0..<w {
      if graph[i][j] == 1 {
        
        dfs(x: j, y: i, graph: &graph, w: w, h: h)
        
        landCount += 1
      }
    }
  }
  
  print(landCount)
}
