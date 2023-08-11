//
//  main.swift
//  9461
//
//  Created by 이치훈 on 2023/08/11.
//

let t = Int(String(readLine()!))!

for _ in 1...t {
  let n = Int(String(readLine()!))!
  var dp = Array(repeating: 0, count: n)
  
  if n == 1 {
    print(1)
  } else if n == 2 {
    print(1)
  } else if n == 3 {
    print(1)
  } else {
    dp[0] = 1
    dp[1] = 1
    dp[2] = 1
    
    for i in 3..<n {
      dp[i] = dp[i-2] + dp[i-3]
    }
    print(dp.last!)
  }
}
