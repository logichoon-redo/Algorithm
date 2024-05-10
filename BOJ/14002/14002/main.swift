//
//  main.swift
//  14002
//
//  Created by 이치훈 on 5/7/24.
//

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp = [Int](repeating: 1, count: n)

_=(1..<n).map { i in
  _=(0..<i).map { j in
    if arr[j] < arr[i] {
      dp[i] = max(dp[j] + 1, dp[i])
    }
  }
}

var LIS = [Int]()
var length = dp.max()!

print(length)

for i in stride(from: n-1, through: 0, by: -1) {
  if dp[i] == length {
    LIS.append(arr[i])
    length -= 1
  }
}

LIS.reverse()
print(LIS.map { String($0)}.joined(separator: " "))
