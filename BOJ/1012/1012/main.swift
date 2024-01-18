//
//  main.swift
//  1012
//
//  Created by 이치훈 on 1/18/24.
//

let t = Int(String(readLine()!))!

func dfs(x: Int, y: Int, _ land: inout [[Int]], m: Int, n: Int) {
  
  if x < 0 || x >= n || y < 0 || y >= m || land[x][y] != 1 { return }
  
  land[x][y] = 0
  
  dfs(x: x + 1, y: y, &land, m: m, n: n)
  dfs(x: x - 1, y: y, &land, m: m, n: n)
  dfs(x: x, y: y + 1, &land, m: m, n: n)
  dfs(x: x, y: y - 1, &land, m: m, n: n)
}

for _ in 1...t {
  let input = readLine()!.split(separator: " ").map { Int(String($0))! }
  let m = input[0]
  let n = input[1]
  var land = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)
  var count = 0
  
  for _ in 1...input[2] {
    let node = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    land[node[1]][node[0]] = 1
  }
  
  for i in 0..<n {
    for j in 0..<m {
      if land[i][j] == 1 {
        
        count += 1
        dfs(x: i, y: j, &land, m: m, n: n)
      }
    }
  }
  
  print(count)
}
