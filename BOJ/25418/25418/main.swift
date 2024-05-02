//
//  main.swift
//  25418
//
//  Created by 이치훈 on 5/2/24.
//

let ak = readLine()!.split(separator: " ").map { Int(String($0))! }
let a = ak[0], k = ak[1]
var dp = [Int](repeating: 0, count: k+1)

_=(a+1...k).map { i in
  dp[i] = dp[i-1] + 1
  if i % 2 == 0 && i / 2 >= a {
    dp[i] = min(dp[i], dp[i/2] + 1)
  }
}

print(dp[k])
