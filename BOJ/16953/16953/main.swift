//
//  main.swift
//  16953
//
//  Created by 이치훈 on 1/24/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var A = input[0], B = input[1]
var count = 1

while A < B {
  
  if B % 2 == 0 {
    B /= 2
  } else if B % 10 == 1 {
    B /= 10
  } else {
    break
  }
  
  count += 1
}

if A == B {
  print(count)
} else {
  print(-1)
}
