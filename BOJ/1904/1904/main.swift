//
//  main.swift
//  1904
//
//  Created by 이치훈 on 2023/08/02.
//

let n = Int(String(readLine()!))!

func tileCase() -> Int {
  var first = 1
  var second = 2
  
  if n == 1 {
    return 1
  }
  else if n == 2 {
    return 2
  } else {
    var result = 0
    for _ in 3...n {
      result = (first + second) % 15746
      first = second % 15746
      second = result
    }
    return result
  }
}

print(tileCase())
