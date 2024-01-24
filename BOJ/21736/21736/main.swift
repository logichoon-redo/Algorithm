//
//  main.swift
//  21736
//
//  Created by 이치훈 on 1/24/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1]
var graph = [[String]](repeating: [], count: n)
var isHaveDoyeon = false
var personCount = 0

for i in 0..<n {
  graph[i] = Array(readLine()!).map { String($0) }
}

func dfs(x: Int, y: Int) {
  if x < 0 || n <= x || y < 0 || m <= y || graph[x][y] == "X" { return }
  
  switch graph[x][y] {
  case "I": isHaveDoyeon = true
  case "P": personCount += 1
  default: break
  }
  
  graph[x][y] = "X"
  
  dfs(x: x+1, y: y)
  dfs(x: x-1, y: y)
  dfs(x: x, y: y+1)
  dfs(x: x, y: y-1)
}

for i in 0..<n {
  for j in 0..<m {
    personCount = 0
    
    dfs(x: i, y: j)
    
    if isHaveDoyeon {
      if 0 < personCount {
        print(personCount)
        exit(0)
      } else {
        print("TT")
      }
      exit(0)
    }
    
  }
}
