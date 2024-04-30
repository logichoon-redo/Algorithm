//
//  main.swift
//  14501
//
//  Created by 이치훈 on 5/1/24.
//

let n = Int(readLine()!)!
var t = [Int]()
var p = [Int]()
_=(0..<n).map { _ in
  let day = readLine()!.split(separator: " ").map { Int(String($0))! }
  t.append(day[0])
  p.append(day[1])
}
var dp = [Int](repeating: -1, count: n)

func topDown(day: Int) -> Int {
  if day > n { return Int.min }
  if day == n { return 0 }
  
  if dp[day] != -1 { return dp[day] }
  
  dp[day] = max(topDown(day: day+1), topDown(day: day + t[day]) + p[day])
  return dp[day]
}

print(topDown(day: 0))
