//
//  main.swift
//  11057
//
//  Created by 이치훈 on 5/16/24.
//

let n = Int(readLine()!)!
var dp = [Int](repeating: 1, count: 10)

for _ in 1..<n {
  for i in 1...9 {
    dp[i] = (dp[i] + dp[i-1]) % 10007
  }
}

print(dp.reduce(0, +) % 10007)
