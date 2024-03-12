//
//  main.swift
//  1455
//
//  Created by 이치훈 on 3/12/24.
//

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0], m = nm[1]
var coinsMap = [[Int]]()
var target = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)
var answer = 0

_=(0..<n).map { _ in
  coinsMap.append(Array(readLine()!).map { Int(String($0))! })
}

func reverseCoins(x: Int, y: Int) {
  for i in 0...x {
    for j in 0...y {
      coinsMap[i][j] = coinsMap[i][j] == 0 ? 1 : 0
    }
  }
}

for i in stride(from: n-1, to: -1, by: -1) {
  for j in stride(from: m-1, to: -1, by: -1) {
    if coinsMap[i][j] != 1 { continue }
      reverseCoins(x: i, y: j)
      answer += 1
      
      if target == coinsMap {
        break
      }
  }
}

print(answer)
