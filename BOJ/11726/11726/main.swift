//
//  main.swift
//  11726
//
//  Created by 이치훈 on 2023/08/25.
//

let n = Int(String(readLine()!))!

var dp = [Int]()
dp.append(1)
dp.append(2)

if 2 < n {
  for i in 2..<n {
    dp.append((dp[i - 2] + dp[i - 1]) % 10007)
  }
}

if n <= 2 {
  print(n)
} else {
  print(dp.last!)
}
