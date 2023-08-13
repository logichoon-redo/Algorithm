//
//  main.swift
//  11053
//
//  Created by 이치훈 on 2023/08/12.
//

let count = Int(String(readLine()!))!
let arr = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
var dp = [Int](repeating: 1, count: count)

for i in 0..<count {
  for j in 0...i {
    if arr[j] < arr[i] {
      dp[i] = max(dp[i], dp[j] + 1)
    }
  }
}
print(dp.max()!)
