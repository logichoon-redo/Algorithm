//
//  main.swift
//  12865
//
//  Created by 이치훈 on 5/3/24.
//

let nk = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nk[0], k = nk[1]
var W: [Int] = [0]
var V: [Int] = [0]
var dp = [[Int]](repeating: [Int](repeating: 0, count: n+1), count: k+1)

_=(0..<n).map { _ in
  let input = readLine()!.split(separator: " ").map { Int(String($0))! }
  W.append(input[0])
  V.append(input[1])
}

_=(1...n).map { i in
  let (w, v) = (W[i], V[i])
  
  _=(0...k).map { j in
    if j >= w {
       dp[j][i] = max(dp[j-w][i-1] + v, dp[j][i-1])
    } else {
      dp[j][i] = dp[j][i-1]
    }
  }
}

print(dp[k][n])
