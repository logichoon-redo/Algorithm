//
//  main.swift
//  9711
//
//  Created by 이치훈 on 4/30/24.
//

let t = Int(readLine()!)!
_=(1...t).map { testCase in
  let input = readLine()!.split(separator: " ").map { Int(String($0))! }
  let p = input[0], q = input[1]
  var dp = [Int](repeating: 0, count: p+1)
  dp[0] = 1
  dp[1] = 1
  
  if p > 1 {
    _=(2..<p).map { i in
      dp[i] = (dp[i-1] + dp[i-2]) % q
    }
  }
  
  if dp[p-1] < q {
    print("Case #\(testCase): \(dp[p-1])")
  } else {
    print("Case #\(testCase): \(dp[p-1] % q)")
  }
}
