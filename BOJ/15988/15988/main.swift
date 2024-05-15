//
//  main.swift
//  15988
//
//  Created by 이치훈 on 5/16/24.
//

let t = Int(readLine()!)!
var dp = [Int](repeating: 0, count: 1_000_001)
dp[1] = 1
dp[2] = 2
dp[3] = 4

for i in stride(from: 4, through: 1_000_000, by: 1) {
  dp[i] = (dp[i-3] + dp[i-2] + dp[i-1]) % 1_000_000_009
}

_=(1...t).map { _ in
  let n = Int(readLine()!)!
  print(dp[n])
}
