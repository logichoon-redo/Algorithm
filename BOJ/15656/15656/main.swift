//
//  main.swift
//  15656
//
//  Created by 이치훈 on 1/12/24.
//


let input = readLine()!.split(separator: " ").map {
  Int($0)!
}
let n = input[0]
let m = input[1]
let num = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
var result = [String]()
var printStr = ""

func recur() {
  if result.count == m {
    printStr += result.joined(separator: " ") + "\n"
    return
  }
  
  for i in num {
    result.append(String(i))
    recur()
    _=result.popLast()
  }
}

recur()
print(printStr)
