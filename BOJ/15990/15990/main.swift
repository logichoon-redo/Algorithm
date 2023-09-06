//
//  main.swift
//  15990
//
//  Created by 이치훈 on 2023/09/07.
//

let t = Int(String(readLine()!))!
var dp = Array(repeating: Array(repeating: 0, count: 4), count: 100001)

dp[1][1] = 1
dp[2][2] = 1
dp[3][1] = 1
dp[3][2] = 1
dp[3][3] = 1

for i in 4..<100001 {
  dp[i][1] = (dp[i-1][2] + dp[i-1][3]) % 1000000009
  dp[i][2] = (dp[i-2][1] + dp[i-2][3]) % 1000000009
  dp[i][3] = (dp[i-3][2] + dp[i-3][1]) % 1000000009
}

for _ in 1...t {
  let n = Int(String(readLine()!))!
  print((dp[n][1] + dp[n][2] + dp[n][3]) % 1000000009)
}
