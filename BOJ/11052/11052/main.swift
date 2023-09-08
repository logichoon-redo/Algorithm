//
//  main.swift
//  11052
//
//  Created by 이치훈 on 2023/09/08.
//

let n = Int(String(readLine()!))!
let nums = readLine()!.split(separator: " ").map{ Int(String($0))! }
var dp = [Int](repeating: 0, count: n+1)

for i in 1...n {
  for j in 1...i {
    dp[i] = max(dp[i], dp[i-j] + nums[j-1])
  }
}

print(dp[n])
