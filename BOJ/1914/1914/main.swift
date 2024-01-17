//
//  main.swift
//  1914
//
//  Created by 이치훈 on 1/17/24.
//

import Foundation

let n = Int(String(readLine()!))!
var answer = ""

func hanoi(num: Int, from: Int, assist: Int, to: Int) {
  if num == 1 {
    answer += "\(from) \(to)\n"
    return
  } else {
    hanoi(num: num - 1, from: from, assist: to, to: assist)
    answer += "\(from) \(to)\n"
    hanoi(num: num - 1, from: assist, assist: from, to: to)
  }
}

var k = pow(2, n) - 1
print(k)

if n <= 20 {
  hanoi(num: n, from: 1, assist: 2, to: 3)
  print(answer)
}
