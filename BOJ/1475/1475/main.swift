//
//  main.swift
//  1475
//
//  Created by 이치훈 on 1/10/24.
//

import Foundation

let roomNum = readLine()!
var plasticNum = [String: Int]()
var wildCard: Float = 0.0
var maxValue = 0
plasticNum["wildCard"] = 0

_=roomNum.map {
  plasticNum[String($0), default: 0] += 1
}

// 9, 6 경우의 수 해결
if let six = plasticNum["6"] {
  wildCard += Float(six)
  plasticNum["6"] = 0
}
if let nine = plasticNum["9"] {
  wildCard += Float(nine)
  plasticNum["9"] = 0
}
if wildCard > 0 {
  wildCard /= 2
  plasticNum["wildCard"] = Int(ceil(wildCard))
}

// 최댓값 탐색
if let wild = plasticNum["wildCard"] {
  maxValue = wild
}
for i in plasticNum.values {
  if maxValue < i {
    maxValue = i
  }
}

print(maxValue)
