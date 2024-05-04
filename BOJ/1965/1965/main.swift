//
//  main.swift
//  1965
//
//  Created by 이치훈 on 5/4/24.
//

let n = Int(readLine()!)!
let box = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp = [Int](repeating: 1, count: n)

_=(1..<n).map { i in
  _=(0..<i).map { j in
    if box[j] < box[i] {
      dp[i] = max(dp[i], dp[j] + 1)
    }
  }
}

print(dp.max()!)
