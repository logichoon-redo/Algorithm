//
//  main.swift
//  12852
//
//  Created by 이치훈 on 2023/09/10.
//

var n = Int(String(readLine()!))!
var dp = Array(repeating: (cnt: Int.max, before: 0), count: n+1)
dp[0] = (0, 0)

for i in 1...n {
  dp[i] = (dp[i-1].cnt + 1, i-1)
  
  if i%2 == 0 && i >= 2 {
    if dp[i].cnt > dp[i/2].cnt + 1 {
      dp[i] = (dp[i/2].cnt + 1, i/2)
    }
  }
  
  if i%3 == 0 && i >= 3 {
    if dp[i].cnt > dp[i/3].cnt + 1 {
      dp[i] = (dp[i/3].cnt + 1, i/3)
    }
  }
}

var result = [Int]()
print(dp[n].cnt - 1)

while n >= 1 {
  result.append(n)
  n = dp[n].before
}

_=result.map {
  print($0, terminator: " ")
}
