//
//  main.swift
//  1110
//
//  Created by 이치훈 on 1/8/24.
//

var input = readLine()!.map {
  Int(String($0))!
}
var circle = 0

if input.count < 2 {
  input.insert(0, at: 0)
}
let originValue = input

while true {
  let temp = input[0] + input[1]
  input[0] = input[1]
  input[1] = temp % 10
  circle += 1
  
  if originValue[0] == input[0] && originValue[1] == input[1] {
    break
  }
}

print(circle)
