//
//  main.swift
//  27433
//
//  Created by 이치훈 on 2023/07/10.
//

var num = Int(String(readLine()!))!
var result = 1

if num == 0 {
  print(1)
}else{
  for i in 1...num {
    result *= i
  }
  print(result)
}
