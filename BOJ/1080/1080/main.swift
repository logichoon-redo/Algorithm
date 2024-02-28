//
//  main.swift
//  1080
//
//  Created by 이치훈 on 2/28/24.
//

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0], m = nm[1]
var changeMap = [[Int]]()
var targetMap = [[Int]]()
var count = 0

_=(0..<n*2).map { i in
  if i < n {
    changeMap.append(Array(readLine()!).map { Int(String($0))! })
  } else {
    targetMap.append(Array(readLine()!).map { Int(String($0))! })
  }
}

func reverseMap(x: Int, y: Int) {
  for i in x..<x+3 {
    for j in y..<y+3 {
      changeMap[i][j] = changeMap[i][j] == 0 ? 1 : 0
    }
  }
}

func solution() {
  if n < 3 || m < 3 { return }
  
  for i in 0..<n-2 {
    for j in 0..<m-2 {
      if targetMap[i][j] != changeMap[i][j] {
        reverseMap(x: i, y: j)
        count += 1
      }
      
      if j == m-3 {
        _=(j..<m).map {
          if targetMap[i][$0] != changeMap[i][$0] {
            return
          }
        }
      }
    }
  }
}

solution()

targetMap == changeMap ? print(count) : print(-1)
