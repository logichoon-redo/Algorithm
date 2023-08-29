//
//  main.swift
//  2579
//
//  Created by 이치훈 on 2023/08/30.
//

let n = Int(String(readLine()!))!
var stairs = [Int]()
var dp = [Int](repeating: 0, count: n)

for _ in 1...n {
  stairs.append(Int(String(readLine()!))!)
}

if n == 1 {
  dp[0] = stairs[0]
} else if n == 2 {
  dp[1] = stairs[0] + stairs[1]
} else if n == 3 {
  dp[2] = max(stairs[0] + stairs[2], stairs[1] + stairs[2])
} else {
  dp[0] = stairs[0]
  dp[1] = max(stairs[1], stairs[0] + stairs[1])
  dp[2] = max(stairs[0] + stairs[2], stairs[1] + stairs[2])
  
  for i in 3..<n {
    dp[i] = max(stairs[i] + dp[i-2], stairs[i] + stairs[i-1] + dp[i-3])
  }
}

print(dp[n-1])
