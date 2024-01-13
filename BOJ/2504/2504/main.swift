//
//  main.swift
//  2504
//
//  Created by 이치훈 on 1/11/24.
//

//import Foundation
//
//let input = readLine()!.map {
//  String($0)
//}
//var stack = [String]()
//
//func stopAndPrintZero() {
//  print(0)
//  exit(0)
//}
//
//for i in input {
//  
//  if i == "(" || i == "[" {
//    
//    stack.append(i)
//    
//  } else if i == ")" {
//    var temp = 0
//    // 예외처리
//    if stack.isEmpty {
//      stopAndPrintZero()
//      break
//    }
//    
//    while !stack.isEmpty {
//      if stack.count == 1, Int(stack.last!) != nil {
//        stopAndPrintZero()
//      }
//      let popped = stack.popLast()!
//      
//      if popped == "(" {
//        stack.append(temp == 0 ? "2" : "\(temp * 2)")
//        break
//      } else if popped == "[" {
//        stopAndPrintZero()
//      } else {
//        temp += Int(popped)!
//      }
//    }
//  } else if i == "]" {
//    var temp = 0
//    
//    if stack.isEmpty {
//      stopAndPrintZero()
//      break
//    }
//    
//    while !stack.isEmpty {
//      if stack.count == 1, Int(stack.last!) != nil {
//        stopAndPrintZero()
//      }
//      let popped = stack.popLast()!
//      
//      if popped == "[" {
//        stack.append(temp == 0 ? "3" : "\(temp * 3)")
//        break
//      } else if popped == "(" {
//        stopAndPrintZero()
//      } else {
//        temp += Int(popped)!
//      }
//    }
//  }
//  
//}
//
//var result = 0
//
//_=stack.map {
//  guard nil != Int($0) else {
//    stopAndPrintZero()
//    return
//  }
//  
//  result += Int($0)!
//}
//
//print(result)

// ----------------------------------------

//import Foundation
//
//let testCase = Int(readLine()!)!
//var isBreak = false // error로 인한 next testCase 처리
//
//for _ in 0..<testCase {
//  let ac = readLine()!.map{String($0)}
//  let arrCount = Int(readLine()!)!
//  let queue = readLine()!.trimmingCharacters(in: ["[", "]"]).split{$0==","}.map{Int(String($0))!}
//  
//  var front = 0
//  var rear = arrCount
//  var rCount = 0
//  
//  for p in ac {
//    switch p {
//    case "R":
//      rCount += 1
//    case "D":
//      
//      if rCount % 2 == 0 { // 짝수
//        front += 1
//      } else { // 홀수
//        rear -= 1
//      }
//    default:
//      break
//    }
//    if front > rear {
//      print("error")
//      isBreak = true
//      break
//    }
//    
//  }
//  
//  if !isBreak {
//    if rCount % 2 != 0 {
//      print("[\(queue[front..<rear].map{ String($0) }.reversed().joined(separator: ","))]")
//    } else {
//      print("[\(queue[front..<rear].map{ String($0) }.joined(separator: ","))]")
//    }
//  } else {
//    isBreak = false
//  }
//}

// --------------------------------



import Foundation

let testCase = Int(readLine()!)!
var isBreak = false // error로 인한 next testCase 처리

for _ in 0..<testCase {
  let ac = readLine()!.map{String($0)}
  let arrCount = Int(readLine()!)!
  let queue = readLine()!.trimmingCharacters(in: ["[", "]"]).split{$0==","}.map{Int(String($0))!}
  
  var front = -1
  var rear = arrCount - 1
  var rCount = 0
  var result = [String]()
  
  for p in ac {
    switch p {
    case "R":
      rCount += 1
    case "D":
      if front == rear {
        print("error")
        isBreak = true
      }
      if rCount % 2 == 0 { // 짝수
        front += 1
      } else { // 홀수
        rear -= 1
      }
    default:
      break
    }
    if isBreak {
      break
    }
  }
  
  if !isBreak {
    if rCount % 2 == 0 {
      while front != rear {
        front += 1
        result.append(String(queue[front]))
      }
    } else {
      while front <= rear && rear >= 0 {
        result.append(String(queue[rear]))
        rear -= 1
      }
    }
    print("[", terminator: "")
    print(result.joined(separator: ","), terminator: "")
    print("]")
  } else {
    isBreak = false
  }
}

