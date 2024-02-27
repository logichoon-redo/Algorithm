//
//  main.swift
//  12904
//
//  Created by 이치훈 on 2/27/24.
//

let s = Array(readLine()!).map { String($0) }
var t = Array(readLine()!).map { String($0) }
var count = t.count
var rearIndex = t.endIndex - 1
var frontIndex = 0
var isRemoveRear = true

while count != s.count {
  if isRemoveRear {
    if t[rearIndex] == "B" {
      isRemoveRear.toggle()
    }
    rearIndex -= 1
  } else {
    if t[frontIndex] == "B" {
      isRemoveRear.toggle()
    }
    frontIndex += 1
  }
 
  count -= 1
}

if isRemoveRear {
  s == t[frontIndex...rearIndex].map { String($0) } ? print(1) : print(0)
} else {
  s == t[frontIndex...rearIndex].map { String($0) }.reversed() ? print(1) : print(0)
}
