//
//  main.swift
//  2563
//
//  Created by 이치훈 on 4/1/25.
//

let n = Int(readLine()!)!
var paper = [Int]()
var backBoard = [[Int]](repeating: [Int](repeating: 0, count: 100), count: 100)

for _ in 0..<n {
  let input = readLine()!.split(separator: " ").map { Int(String($0))! }
  
  for i in input[0]..<input[0]+10 {
    for j in input[1]..<input[1]+10 {
      backBoard[i][j] = 1
    }
  }
}

print(backBoard.map { $0.reduce(0) { $0 + $1 } }.reduce(0) { $0 + $1 })
