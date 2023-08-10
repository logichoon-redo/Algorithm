//
//  main.swift
//  9095
//
//  Created by 이치훈 on 2023/08/10.
//

let t = Int(String(readLine()!))!

for _ in 1...t {
  let n = Int(String(readLine()!))!
  var dp = Array(repeating: 0, count: n)
  
  if n == 1 {
    print(1)
  } else if n == 2 {
    print(2)
  } else if n == 3 {
    print(4)
  } else {
    dp[0] = 1
    dp[1] = 2
    dp[2] = 4
    
    for i in 3..<n {
      dp[i] = dp[i-3] + dp[i-2] + dp[i-1]
    }
    print(dp[n - 1])
  }
}
