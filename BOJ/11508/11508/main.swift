//
//  main.swift
//  11508
//
//  Created by 이치훈 on 3/14/24.
//

let n = Int(readLine()!)!
var prices = [Int]()
var sum = 0
_=(0..<n).map { _ in
  prices.append(Int(readLine()!)!)
}
prices.sort(by: >)

_=(0..<n).map { i in
  if (i+1) % 3 != 0 {
    sum += prices[i]
  }
}

print(sum)
