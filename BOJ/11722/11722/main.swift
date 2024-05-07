//
//  main.swift
//  11722
//
//  Created by 이치훈 on 5/7/24.
//

  let n = Int(readLine()!)!
  let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
  var dp = [Int](repeating: 1, count: n)

  _=(1..<n).map { i in
    _=(0..<i).map { j in
      if arr[j] > arr[i] {
        dp[i] = max(dp[j] + 1, dp[i])
      }
    }
  }

  print(dp.max()!)
