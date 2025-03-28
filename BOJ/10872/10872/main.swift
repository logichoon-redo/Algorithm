//
//  main.swift
//  10872
//
//  Created by 이치훈 on 3/28/25.
//

let n = Int(readLine()!)!
var result = 1

if n != 0 {
  for i in 1...n {
    result *= i
  }

}

print(result)
