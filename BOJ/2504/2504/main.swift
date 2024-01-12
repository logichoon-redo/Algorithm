//
//  main.swift
//  2504
//
//  Created by 이치훈 on 1/11/24.
//

import Foundation

let input = readLine()!.map {
  String($0)
}
var stack = [String]()

func stopAndPrintZero() {
  print(0)
  exit(0)
}

for i in input {
  
  if i == "(" || i == "[" {
    
    stack.append(i)
    
  } else if i == ")" {
    var temp = 0
    // 예외처리
    if stack.isEmpty {
      stopAndPrintZero()
      break
    }
    
    while !stack.isEmpty {
      if stack.count == 1, Int(stack.last!) != nil {
        stopAndPrintZero()
      }
      let popped = stack.popLast()!
      
      if popped == "(" {
        stack.append(temp == 0 ? "2" : "\(temp * 2)")
        break
      } else if popped == "[" {
        stopAndPrintZero()
      } else {
        temp += Int(popped)!
      }
    }
  } else if i == "]" {
    var temp = 0
    
    if stack.isEmpty {
      stopAndPrintZero()
      break
    }
    
    while !stack.isEmpty {
      if stack.count == 1, Int(stack.last!) != nil {
        stopAndPrintZero()
      }
      let popped = stack.popLast()!
      
      if popped == "[" {
        stack.append(temp == 0 ? "3" : "\(temp * 3)")
        break
      } else if popped == "(" {
        stopAndPrintZero()
      } else {
        temp += Int(popped)!
      }
    }
  }
  
}

var result = 0

_=stack.map {
  guard nil != Int($0) else {
    stopAndPrintZero()
    return
  }
  
  result += Int($0)!
}

print(result)
