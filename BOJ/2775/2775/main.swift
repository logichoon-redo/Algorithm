//
//  main.swift
//  2775
//
//  Created by 이치훈 on 2023/09/04.
//

let t = Int(String(readLine()!))!

for _ in 1...t {
  let k = Int(String(readLine()!))!
  let n = Int(String(readLine()!))!
  var dp = Array(1...14)
  
  if n == 1 {
    print(1)
  } else {
    for _ in 1...k {
      for i in 1..<n {
        dp[i] = dp[i-1] + dp[i]
      }
    }
    
    print(dp[n - 1])
  }
}
