//
//  main.swift
//  9663
//
//  Created by 이치훈 on 1/15/24.
//

let n = Int(String(readLine()!))!
var board = [Int](repeating: 0, count: n)
var visited = [Bool](repeating: false, count: n)
var caseCount = 0

func check(_ x: Int) -> Bool {
  for i in 0..<x {
    if board[i] == board[x] {
      return false
    }
    
    if abs(board[x] - board[i]) == abs(i-x) {
      return false
    }
  }
  
  return true
}

func dfs(_ x: Int) {
  if x == n {
    caseCount += 1
    return
  }
  
  for i in 0..<n {
    if visited[i] { continue }
    
    board[x] = i
    if check(x) {
      visited[i] = true
      dfs(x + 1)
      visited[i] = false
    }
  }
}

dfs(0)
print(caseCount)
