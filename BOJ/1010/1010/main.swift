//
//  main.swift
//  1010
//
//  Created by 이치훈 on 4/2/24.
//

var cache = [[Int]](repeating: [Int](repeating: 0, count: 31), count: 31)

_=(0...30).map { i in
  for j in 0...i {
    if i == j || j == 0 {
      cache[i][j] = 1
      continue
    }
    cache[i][j] = cache[i-1][j-1] + cache[i-1][j]
  }
}

let t = Int(readLine()!)!
_=(1...t).map { _ in
  let input = readLine()!.split(separator: " ").map { Int(String($0))! }
  let n = input[0], m = input[1]
  
  print(cache[m][n])
}
