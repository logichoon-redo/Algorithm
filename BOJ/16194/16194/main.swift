//
//  main.swift
//  16194
//
//  Created by 이치훈 on 5/17/24.
//

let n = Int(readLine()!)!
let p = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp = [Int](repeating: 999999, count: n+1)
dp[0] = 0

_=(1...n).map { i in
  _=(1...i).map { j in
    dp[i] = min(dp[i-j] + p[j-1], dp[i])
  }
}

print(dp[n])
