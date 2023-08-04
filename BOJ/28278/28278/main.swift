//
//  main.swift
//  28278
//
//  Created by 이치훈 on 2023/08/04.
//

let length = Int(String(readLine()!))!
var stack = [Int]()

for _ in 1...length {
  let command = readLine()!.split(separator: " ").map {
    Int(String($0))!
  }
  
  switch command[0] {
  case 1:
    stack.append(command[1])
  case 2:
    if stack.isEmpty {
      print(-1)
    } else {
      print(stack.removeLast())
    }
  case 3:
    print(stack.count)
  case 4:
    stack.isEmpty ? print(1) : print(0)
  case 5:
    if stack.isEmpty {
      print(-1)
    } else {
      print(stack.last!)
    }
  default:
    break
  }
}
