//
//  main.swift
//  2839
//
//  Created by 이치훈 on 2023/08/25.
//

var n = Int(String(readLine()!))!
var count = 0

while n >= 3 {
  if n % 5 == 0 {
    n -= 5
    count += 1
  } else {
    n -= 3
    count += 1
  }
}

if n == 0 {
  print(count)
} else {
  print(-1)
}
