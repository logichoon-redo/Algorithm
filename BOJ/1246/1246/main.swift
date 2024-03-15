//
//  main.swift
//  1246
//
//  Created by 이치훈 on 3/15/24.
//

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0], m = nm[1]
var prices = [Int]()
var maxPriceSum = Int.min
var maxPrice = 0
_=(0..<m).map { _ in
  prices.append(Int(readLine()!)!)
}
prices.sort()

_=(0..<m).map { i in
  let stock = min(m-i, n)
  if prices[i] * stock > maxPriceSum {
    maxPriceSum = prices[i] * stock
    maxPrice = prices[i]
  }
}

print(maxPrice, maxPriceSum, separator: " ")
