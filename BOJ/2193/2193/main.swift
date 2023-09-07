//
//  main.swift
//  2193
//
//  Created by 이치훈 on 2023/09/07.
//

let n = Int(String(readLine()!))!
var dp = Array(repeating: 0, count: 91)

dp[1] = 1
dp[2] = 1

for i in stride(from: 3, through: n, by: 1) {
  dp[i] = dp[i-1] + dp[i-2]
}
print(dp[n])
