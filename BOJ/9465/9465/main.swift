//
//  main.swift
//  9465
//
//  Created by 이치훈 on 4/27/24.
//

let t = Int(readLine()!)!
for _ in 1...t {
  let n = Int(readLine()!)!
  var sticker = [[Int]]()
  var dp = [[Int]](repeating: [Int](repeating: 0, count: n), count: 2)
  _=(1...2).map { _ in
    sticker.append(readLine()!.split(separator: " ").map { Int(String($0))! })
  }
  dp[0][0] = sticker[0][0]
  dp[1][0] = sticker[1][0]
  
  if 1 < n {
    dp[0][1] = sticker[1][0] + sticker[0][1]
    dp[1][1] = sticker[0][0] + sticker[1][1]
    
    _=(2..<n).map { i in
      dp[0][i] = sticker[0][i] + max(dp[1][i-1], dp[1][i-2])
      dp[1][i] = sticker[1][i] + max(dp[0][i-1], dp[0][i-2])
    }
  }
  
  print(max(dp[0][n-1],dp[1][n-1]))
}
