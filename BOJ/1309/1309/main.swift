//
//  main.swift
//  1309
//
//  Created by 이치훈 on 5/16/24.
//

let n = Int(readLine()!)!
var dp = [Int](repeating: 0, count: 100_001)
dp[1] = 3
dp[2] = 7

if n > 2 {
  _=(3...n).map { i in
    dp[i] = (dp[i-1] * 2 + dp[i-2]) % 9901
  }
}

print(dp[n])
