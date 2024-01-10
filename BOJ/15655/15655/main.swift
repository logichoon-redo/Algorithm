//
//  main.swift
//  15655
//
//  Created by 이치훈 on 1/10/24.
//

let input = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
let n = input[0]
let m = input[1]
var num = readLine()!.split(separator: " ").map {
  Int(String($0))!
}.sorted()
var result = [Int]()
var printStr = ""

func recur() {
  if result.count == m {
    printStr += result.map { String($0) }.joined(separator: " ") + "\n"
    return
  }
  
  for i in num {
    if !result.contains(i) && result.last ?? 0 < i {
      result.append(i)
      recur()
      _=result.popLast()
      
      if result.count == 0 && !num.isEmpty {
        _=num.removeFirst()
      }
    }
  }
  
}

recur()
print(printStr)
