//
//  main.swift
//  15657
//
//  Created by 이치훈 on 1/13/24.
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
var printStr = ""

func recur() {
  if result.count == m {
    printStr += result.joined(separator: " ") + "\n"
    return
  }
  
  for i in num {
    if let last = result.last {
      if Int(last)! > i {
        continue
      }
    }
    
    result.append(String(i))
    recur()
    _=result.popLast()
    
    if result.count == 0 && !num.isEmpty {
      _=num.removeFirst()
    }
  }
}

recur()
print(printStr)
