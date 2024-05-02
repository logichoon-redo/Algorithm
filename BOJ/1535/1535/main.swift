//
//  main.swift
//  1535
//
//  Created by 이치훈 on 5/2/24.
//

let n = Int(readLine()!)!
let H = [0] + readLine()!.split(separator: " ").map { Int(String($0))! }
let P = [0] + readLine()!.split(separator: " ").map { Int(String($0))! }
var dp = [[Int]](repeating: [Int](repeating: 0, count: n+1), count: 100)

_=(1...n).map { i in
  let (h, p) = (H[i], P[i])
  
  _=(0...99).map { j in
    if h <= j { // h 비용을 비교 가능한 시점
      // j-h(0) 부터 추가 할 수 있는 비용 탐색 (하지만 비용의 한계는 99까지 이므로 79 + 21의 계산 결과는 볼 수 없음)
      dp[j][i] = max(dp[j - h][i - 1] + p, dp[j][i - 1])
    } else {
      dp[j][i] = dp[j][i - 1]
    }
  }
  
}

print(dp[99][n])
