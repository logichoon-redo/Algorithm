//
//  main.swift
//  1439
//
//  Created by 이치훈 on 2/28/24.
//

var s = Array(readLine()!).map { Int(String($0))! }
var zeroSum = 0
var oneSum = 0
var isOne = true

if s[0] == 1 {
  oneSum += 1
} else {
  isOne = false
  zeroSum += 1
}

_=(1..<s.count).map { i in
  if isOne && s[i] != 1  {
    isOne = false
    zeroSum += 1
  } else if !isOne && s[i] != 0 {
    isOne = true
    oneSum += 1
  }
}

print(min(zeroSum, oneSum))
