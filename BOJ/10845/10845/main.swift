//
//  main.swift
//  10845
//
//  Created by 이치훈 on 2023/07/04.
//

let count = Int(String(readLine()!))!
var queue = Array(repeating: 0, count: count)
var front = 0
var rear = 0
var queueSize = 0

for _ in 1...count {
  let command = readLine()!.split(separator: " ")
  
  switch command[0] {
  case "push":
    push(Int(command[1])!)
  case "pop":
    print(pop())
  case "size":
    print(size())
  case "empty":
    print(isEmpty())
  case "front":
    print(getFront())
  case "back":
    print(getBack())
  default:
    break
  }
}

func push(_ item: Int) {
  queue[rear] = item
  rear += 1
  rear %= count
  queueSize += 1
}

func pop() -> Int {
  if isEmpty() == 1 {
    return -1
  }
  
  let temp = queue[front]
  front += 1
  front %= count
  queueSize -= 1
  return temp
}

func size() -> Int {
  return queueSize
}

func isEmpty() -> Int {
  if queueSize <= 0 {
    return 1
  }
  return 0
}

func getFront() -> Int {
  if isEmpty() == 1 {
    return -1
  }
  return queue[front]
}

func getBack() -> Int {
  if isEmpty() == 1 {
    return -1
  }
  
  if rear == 0 {
    return queue[count - 1]
  }
  return queue[rear - 1]
}
