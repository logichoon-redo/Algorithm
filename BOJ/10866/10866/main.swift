//
//  main.swift
//  10866
//
//  Created by 이치훈 on 2023/07/07.
//

class Node {
  var data = 0
  var front: Node?
  var rear: Node?

  init(data: Int, front: Node? = nil, rear: Node? = nil) {
    self.data = data
    self.front = front
  }
}

let length = Int(String(readLine()!))!
var head: Node?
var tail: Node?
var count = 0

for _ in 1...length {

  let command = readLine()!.split(separator: " ")
  
  switch command[0] {
  case "push_front":
    let node = createNode(Int(command[1])!)
    push_front(item: node)
  case "push_back":
    let node = createNode(Int(command[1])!)
    push_back(item: node)
  case "pop_front":
    print(pop_front())
  case "pop_back":
    print(pop_back())
  case "size":
    print(getSize())
  case "empty":
    print(isEmpty())
  case "front":
    print(getFrontItem())
  case "back":
    print(getBackItem())
  default:
    print("error")
  }

  
}

func createNode(_ data: Int) -> Node {
  let node = Node(data: data)
  return node
}

func push_front(item: Node) {
  if count == 0 {
    head = item
    tail = item
  }
  
  count += 1
  head?.rear = item
  item.front = head
  head = item
}

func push_back(item: Node) {
  if count == 0 {
    head = item
    tail = item
  }
  
  count += 1
  tail?.front = item
  item.rear = tail
  tail = item
}

func pop_front() -> Int {
  if count == 0 {
    return -1
  }
  
  let temp = head?.data
  count -= 1
  head = head?.front
  head?.rear = nil
  return temp!
}

func pop_back() -> Int {
  if count == 0 {
    return -1
  }
  
  let temp = head?.data
  count -= 1
  tail = tail?.rear
  tail?.front = nil
  return temp!
}

func getSize() -> Int {
  return count
}

func isEmpty() -> Int {
  if count == 0 {
    return 1
  }
  return 0
}

func getFrontItem() -> Int {
  if count == 0 {
    return -1
  }
  return head!.data
}

func getBackItem() -> Int {
  if count == 0 {
    return -1
  }
  return tail!.data
}
