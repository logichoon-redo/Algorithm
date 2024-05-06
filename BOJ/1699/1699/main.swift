//
//  main.swift
//  1699
//
//  Created by 이치훈 on 5/6/24.
//

let n = Int(readLine()!)!
var dp = [Int](repeating: 0, count: n+1)

_=(1...n).map { i in
  dp[i] = i
  for j in 1...i {
    if j * j > i { break }
    
    dp[i] = min(dp[i], dp[i - j * j] + 1)
  }
}

print(dp[n])
