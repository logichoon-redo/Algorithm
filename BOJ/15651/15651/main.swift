//
//  main.swift
//  15651
//
//  Created by 이치훈 on 1/10/24.
//

let input = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
let n = input[0]
let m = input[1]
var result = [Int]()
var printString = ""

func recur() {
  if result.count == m {
    printString += result.map { String($0) }.joined(separator: " ") + "\n"
    return
  }
  
  for i in 1...n {
    result.append(i)
    recur()
    _=result.popLast()
  }
}

recur()
print(printString)
