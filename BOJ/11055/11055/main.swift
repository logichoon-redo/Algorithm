//
//  main.swift
//  11055
//
//  Created by 이치훈 on 4/26/24.
//

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp = [Int](repeating: 0, count: 1001)

_=(1...n).map { i in
  dp[i] = arr[i-1]
  _=(1...i).map { j in
    if arr[j-1] < arr[i-1] {
      dp[i] = max(arr[i-1] + dp[j], dp[i])
    }
  }
}

print(dp.max()!)
