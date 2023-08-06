//
//  main.swift
//  28279
//
//  Created by 이치훈 on 2023/08/06.
//

class Node {
  var front: Node? = nil
  var rear: Node? = nil
  var data: Int = 0
}

let n = Int(String(readLine()!))!
var head: Node?
var tail: Node?
var count = 0

for _ in 1...n {
  let command = readLine()!.split(separator: " ").map {
    Int(String($0))!
  }
  
  switch command[0] {
  case 1:
    insertHead(createNode(command[1]))
  case 2:
    insertTail(createNode(command[1]))
  case 3:
    print(popHead())
  case 4:
    print(popTail())
  case 5:
    print(count)
  case 6:
    count > 0 ? print(0) : print(1)
  case 7:
    count > 0 ? print(head!.data) : print(-1)
  case 8:
    count > 0 ? print(tail!.data) : print(-1)
  default:
    break
  }
}
func createNode(_ data: Int) -> Node {
  let node = Node()
  node.data = data
  
  if count == 0 {
    head = node
    tail = node
  }
  
  return node
}

func insertHead(_ node: Node) {
  node.rear = head
  head?.front = node
  count += 1
  
  head = node
}

func insertTail(_ node: Node) {
  node.front = tail
  tail?.rear = node
  count += 1
  
  tail = node
}

func popHead() -> Int {
  if count == 0 {
    return -1
  } else if count == 1 {
    let temp = head?.data
    head = nil
    count -= 1
    
    return temp!
  }
  let temp = head?.data
  head = head?.rear
  head?.front = nil
  count -= 1
  
  return temp!
}

func popTail() -> Int {
  if count == 0 {
    return -1
  } else if count == 1 {
    let temp = tail?.data
    tail = nil
    count -= 1
    
    return temp!
  }
  
  let temp = tail?.data
  tail = tail?.front
  tail?.rear = nil
  count -= 1
  
  return temp!
}
