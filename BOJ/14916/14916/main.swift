//
//  main.swift
//  14916
//
//  Created by 이치훈 on 3/17/24.
//

var n = Int(readLine()!)!
var coinCount = 0

while n >= 5 {
  if n < 10 && (n - 5) % 2 != 0 {
    break
  }
  n -= 5
 coinCount += 1
}

coinCount += n / 2
n %= 2

n == 0 ? print(coinCount) : print(-1)
