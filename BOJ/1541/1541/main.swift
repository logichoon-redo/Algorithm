//
//  main.swift
//  1541
//
//  Created by 이치훈 on 2/23/24.
//

let input = readLine()!.split(separator: "-").map { String($0) }
var temp = 0
var sum = 0

_=(0..<input.count).map { i in
  temp = 0
  _=input[i].split(separator: "+").map { temp += Int(String($0))! }
  
  if i == 0 {
    sum = temp
  } else {
    sum -= temp
  }
}

print(sum)
