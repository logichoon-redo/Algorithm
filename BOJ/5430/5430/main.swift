//
//  main.swift
//  5430
//
//  Created by 이치훈 on 2023/08/08.
//

func solution() {
  let command = readLine()!
  var tail = Int(readLine()!)!
  let array = readLine()!.dropFirst().dropLast().split(separator: ",").map { String($0) }
  var isReverse = false
  var head = 0

  for p in command {
    if p == "R" {
      isReverse.toggle()
      continue
    }
    if isReverse {
      tail -= 1
    } else {
      head += 1
    }
    if head > tail { break }
  }

  if head > tail {
    print("error")
  } else {
    if isReverse {
      print("[\(array[head..<tail].reversed().joined(separator: ","))]")
    } else {
      print("[\(array[head..<tail].joined(separator: ","))]")
    }
  }
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }


// ----- 16% runtime error!
//class Node {
//  var front: Node? = nil
//  var rear: Node? = nil
//  var data = 0
//}
//var head: Node!
//var tail: Node!
//var count = 0
//var isFront = true
//
//let t = Int(String(readLine()!))!
//
//outerloop: for _ in 1...t {
//  head = nil
//  tail = nil
//  count = 0
//  isFront = true
//
//  let command = Array(readLine()!)
//  _=readLine()
//
//  _=readLine()!.dropFirst().dropLast().split(separator: ",").map {
//    createDeque(Int(String($0))!)
//  }
//
//  for comm in command {
//    switch comm {
//    case "R":
//      reversed()
//    case "D":
//      if isFront {
//        if !popHead() {
//          print("error")
//          continue outerloop
//        }
//      } else {
//        if !popTail() {
//          print("error")
//          continue outerloop
//        }
//      }
//    default:
//      break
//    }
//  }
//
//  print("[", terminator: "")
//  if isFront {
//    for _ in 1...count - 1 {
//      print(head.data, terminator: "")
//      head = head.rear
//      print(",", terminator: "")
//    }
//    print(head.data, terminator: "")
//  } else {
//    for _ in 1...count - 1 {
//      print(tail.data, terminator: "")
//      tail = tail.front
//      print(",", terminator: "")
//    }
//    print(tail.data, terminator: "")
//  }
//  print("]")
//}
//
//func createDeque(_ data: Int) {
//  if count <= 0 {
//    let node = Node()
//    node.data = data
//    head = node
//    tail = head
//    count += 1
//    return
//  }
//
//  let node = Node()
//  node.data = data
//  tail.rear = node
//  node.front = tail
//  tail = tail.rear
//  count += 1
//  return
//}
//
//func reversed() {
//  isFront = !isFront
//}
//
//func popHead() -> Bool {
//  if count == 0 {
//    return false
//  } else if count == 1 {
//    head = nil
//    count -= 1
//    return true
//  }
//
//  head = head.rear
//  head.front = nil
//  count -= 1
//
//  return true
//}
//
//func popTail() -> Bool {
//  if count == 0 {
//    return false
//  } else if count == 1 {
//    tail = nil
//    count -= 1
//
//    return true
//  }
//
//  tail = tail?.front
//  tail?.rear = nil
//  count -= 1
//
//  return true
//}
