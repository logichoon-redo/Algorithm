//
//  main.swift
//  2156
//
//  Created by 이치훈 on 4/8/24.
//

let n = Int(readLine()!)!
var dp = [Int](repeating: 0, count: n+1)
var arr: [Int] = [0]
_=(0..<n).map { _ in
  arr.append(Int(readLine()!)!)
}

dp[1] = arr[1]
if n >= 2 {
  dp[2] = arr[1] + arr[2]
}

for i in stride(from: 3, through: n, by: 1) {
  dp[i] = max(arr[i] + dp[i-2], arr[i] + arr[i-1] + dp[i-3], dp[i-1])
}

print(dp[n])
