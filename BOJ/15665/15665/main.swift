//
//  main.swift
//  15665
//
//  Created by 이치훈 on 1/14/24.
//

let input = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
let n = input[0]
let m = input[1]
let nums = readLine()!.split(separator: " ").map {
  Int(String($0))!
}.sorted()

var result = [String]()
var check = Set<String>()

func recur() {
  if result.count == m {
    let printStr = result.joined(separator: " ")
    if !check.contains(printStr) {
      check.insert(printStr)
      print(printStr)
    }
    return
  }
  
  for i in nums {
    result.append(String(i))
    recur()
    _=result.popLast()
  }
}

recur()
