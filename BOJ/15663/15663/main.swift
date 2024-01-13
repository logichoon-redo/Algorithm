//
//  main.swift
//  15663
//
//  Created by 이치훈 on 1/13/24.
//

let input = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
let n = input[0]
let m = input[1]
let num = readLine()!.split(separator: " ").map {
  Int(String($0))!
}.sorted()
var visited = [Bool](repeating: false, count: 10)
var result = [String]()
var printStr = ""

func recur() {
  var beforeNum = 0
  if result.count == m {
    printStr += result.joined(separator: " ") + "\n"
    return
  }
  
  for i in 0..<num.count {
    
    if visited[i] == false && beforeNum != num[i] {
      visited[i] = true
      result.append(String(num[i]))
      beforeNum = num[i]
      recur()
      _=result.popLast()
      visited[i] = false
    }
  }
}

recur()
print(printStr)
