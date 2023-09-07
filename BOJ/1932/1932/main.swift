//
//  main.swift
//  1932
//
//  Created by 이치훈 on 2023/09/07.
//

let n = Int(String(readLine()!))!
var nums = [[Int]]()
var dp = Array(repeating: Array(repeating: 0, count: 500), count: 500)

for _ in 1...n {
  nums.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

dp[0][0] = nums[0][0]

for i in 1..<n {
  for j in 0...i {
    if j == 0 {
      dp[i][j] = dp[i-1][0] + nums[i][j]
      continue
    }
    
    if i == j {
      dp[i][j] = dp[i-1][j-1] + nums[i][j]
      continue
    }
    
    dp[i][j] = max(dp[i-1][j-1], dp[i-1][j]) + nums[i][j]
  }
}

print(dp[n-1].max()!)
