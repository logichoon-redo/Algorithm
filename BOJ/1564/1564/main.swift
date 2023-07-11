//
//  main.swift
//  1564
//
//  Created by 이치훈 on 2023/07/10.
//
import Foundation

let num = Int(String(readLine()!))!
var fact = 1

if num != 0 {
  for i in 1...num {
    fact *= i
    removeTrailingZero()
    fact %= 1000000000000
  }
}

fact %= 100000
print(String(format: "%05d", fact))

func removeTrailingZero() {
  while true {
    let check = fact % 10
    if check != 0 {
      return
    }
    
    fact /= 10
  }
}
