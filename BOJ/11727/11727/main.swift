//
//  main.swift
//  11727
//
//  Created by 이치훈 on 2023/08/28.
//

let n = Int(String(readLine()!))!
var dp = [Int](repeating: 0, count: 1)

dp.append(1)
dp.append(3)

if n == 1 || n == 2 {
  print(dp[n])
} else {
  for i in 3...n {
    dp.append((dp[i - 1] + (dp[i - 2] * 2)) % 10007)
  }
  print(dp[n])
}
