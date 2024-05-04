//
//  main.swift
//  25644
//
//  Created by 이치훈 on 5/4/24.
//

let n = Int(readLine()!)!
let stock = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp = [Int](repeating: 0, count: n)
var minStock = stock[0]

_=(1..<n).map { i in
  minStock = min(minStock, stock[i])
  dp[i] = max(dp[i-1], stock[i] - minStock)
}

print(dp.last!)
