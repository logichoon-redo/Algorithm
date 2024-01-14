//
//  main.swift
//  15664
//
//  Created by 이치훈 on 1/14/24.
//

let input = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
let n = input[0]
let m = input[1]
var num = readLine()!.split(separator: " ").map {
  Int(String($0))!
}.sorted()

var result = [String]()
var printStr = [String]()

func recur(index: Int) {
  if result.count == m {
    let check = result.joined(separator: " ")
    if !printStr.contains(check) {
      printStr.append(check)
    }
    return
  }
  
  for i in index..<n {
    result.append(String(num[i]))
    recur(index: i + 1)
    _=result.popLast()
  }
}

recur(index: 0)

_=printStr.map {
  print($0, terminator: "\n")
}
