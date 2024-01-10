//
//  main.swift
//  15650
//
//  Created by 이치훈 on 1/10/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]
var result = [Int]()

func recur() {
  if result.count == m {
    print(result.map { String($0) }.joined(separator: " "))
    return
  }
  
loop: for i in 1...n {
    if !result.contains(i) {
      if !result.isEmpty && result.last! > i {
        continue loop
      }
      
      result.append(i)
      recur()
      _=result.popLast()
      
    }
  }
}

recur()
