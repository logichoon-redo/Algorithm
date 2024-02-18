//
//  main.swift
//  9935
//
//  Created by 이치훈 on 2/18/24.
//

let input = readLine()!
let bomb = readLine()!
var stack = [Character]()

for s in input {
  stack.append(s)
  
  if s == bomb.last! {
    
    if stack.count >= bomb.count && String(stack[(stack.count - bomb.count)...]) == bomb {
      _=(1...bomb.count).map { _ in
        stack.popLast()
      }
    }
  }
}

stack.isEmpty ? print("FRULA") : print(String(stack))
