//
//  main.swift
//  11866
//
//  Created by 이치훈 on 2023/07/06.
//

let command = readLine()!.split(separator: " ").map {Int($0)!}
let n = command[0]
let k = command[1]
var queue = Array(1...n)
var front = 0
var rear = 0
var count = k
var result = [Int]()

while !queue.isEmpty {
  if count <= queue.count {
    result.append(queue[count - 1])
    queue.remove(at: count - 1)
    count = count + k - 1
  }else{
    count -= queue.count
  }
}
print("<" + result.map {String($0)}.joined(separator: ", ") + ">")


func push(_ item: Int) {
  queue[rear] = item
  rear += 1
  rear %= n
}

func pop() -> Int {
  if count == 0 {
    return 0
  }

  let temp = queue[front]
  front += 1
  front %= n
  return temp
}

