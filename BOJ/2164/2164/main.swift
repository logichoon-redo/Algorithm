//
//  main.swift
//  2164
//
//  Created by 이치훈 on 2023/07/03.
//

var length = Int(String(readLine()!))!
var card = Array(repeating: 0, count: length * 2)
var front = 0
var rear = length - 1

for i in 0..<length {
  card[i] = i + 1
}

while length != 1 {
  pop()
  push()
}
print(card[front])

func pop() {
  front += 1
  length -= 1
}

func push() {
  let item = moveFirstToLast()
  rear += 1
  card[rear] = item
}

func moveFirstToLast() -> Int {
  let temp = card[front]
  front += 1
  return temp
}
