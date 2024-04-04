//
//  main.swift
//  1149
//
//  Created by 이치훈 on 4/4/24.
//

let n = Int(readLine()!)!
var rgbPrice = [[Int]]()
var dp = [[Int]](repeating: [Int](repeating: 0, count: 3), count: n+1)
_=(0..<n).map { i in
  rgbPrice.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

_=(1..<n+1).map { i in
  dp[i][0] = min(dp[i-1][1], dp[i-1][2]) + rgbPrice[i-1][0]
  dp[i][1] = min(dp[i-1][0], dp[i-1][2]) + rgbPrice[i-1][1]
  dp[i][2] = min(dp[i-1][0], dp[i-1][1]) + rgbPrice[i-1][2]
}

print(dp[n].min()!)
