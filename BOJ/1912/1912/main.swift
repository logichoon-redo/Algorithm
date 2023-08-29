//
//  main.swift
//  1912
//
//  Created by 이치훈 on 2023/08/29.
//

let n = Int(String(readLine()!))!
var dp = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
var max = dp[0]

for i in 1..<n {
  if 0 < dp[i-1] && 0 < dp[i] + dp[i - 1] {
    dp[i] += dp[i-1]
  }
  
  if max < dp[i] {
    max = dp[i]
  }
}
print(max)
