//
//  main.swift
//  1676
//
//  Created by 이치훈 on 2023/07/11.
//

let num = Int(String(readLine()!))!
var factor = 1
var zeroCount = 0

if num != 0 {
  for i in 1...num {
    factor *= i
    countTrailingZero()
    factor %= 1000000
  }
}
print(zeroCount)

func countTrailingZero() {
  while true {
    let checkZero = factor % 10
    if checkZero == 0{
      factor /= 10
      zeroCount += 1
    }else{
      break
    }
  }
}
