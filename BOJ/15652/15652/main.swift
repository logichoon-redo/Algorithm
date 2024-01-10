//
//  main.swift
//  15652
//
//  Created by 이치훈 on 1/10/24.
//

let input = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
let n = input[0]
let m = input[1]
var result = [Int]()
var printStr = ""

func recur() {
  if result.count == m {
    printStr += result.map { String($0) }.joined(separator: " ") + "\n"
    return
  }
  
  for i in 1...n {
    if result.last ?? 0 <= i {
      result.append(i)
      recur()
      _=result.popLast()
    }
  }
}

recur()
print(printStr)
