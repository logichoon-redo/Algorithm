//
//  main.swift
//  4949
//
//  Created by 이치훈 on 2023/06/27.
//

struct Stack {
  var stack = [String]()
  
  mutating func push(item: String){
    stack.append(item)
  }
  
  mutating func bracesPop() -> Bool {
    if stack.isEmpty || "(" != self.peek() {
      return false
    }
    stack.removeLast()
    return true
  }
  
  mutating func braketsPop() -> Bool {
    if stack.isEmpty || "[" != self.peek() {
      return false
    }
    stack.removeLast()
    return true
  }
  
  func peek() -> String {
    if stack.isEmpty {
      return ""
    } else {
      return stack.last!
    }
  }
}

 while let inputString = readLine() {
   if inputString == "." {
     break
   }
   checkString(item: inputString)
}

func checkString(item: String) {
  let operand = Array(item)
  var Stack = Stack()
  
  for i in 0..<operand.count {
    switch operand[i] {
    case "(":
      Stack.push(item: "(")
    case ")":
      if !Stack.bracesPop() {
        print("no")
        return
      }
    case "[":
      Stack.push(item: "[")
    case "]":
      if !Stack.braketsPop() {
        print("no")
        return
      }
    default:
      break
    }
  }
  
  if Stack.stack.isEmpty {
    print("yes")
  } else {
    print("no")
  }
}
