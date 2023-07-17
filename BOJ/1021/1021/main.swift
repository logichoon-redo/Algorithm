//
//  main.swift
//  1021
//
//  Created by 이치훈 on 2023/07/17.
//

let nm = readLine()!.split(separator: " ").map {Int(String($0))!} // 길이, pop횟수
let n = nm[0], m = nm[1]
var targets = readLine()!.split(separator: " ").map {Int(String($0))!} // pop할 요소
var findArr = Array(1...n)
var findCount = 0

func rotateQueue(_ direction: Bool) {
  if direction { // shiftRight
    let temp = findArr.removeLast()
    findArr.insert(temp, at: 0)
  } else {
    let temp = findArr.removeFirst()
    findArr.append(temp)
  }
}

func find() {
  let target = targets[0]
  let targetIndex = findArr.firstIndex(of: target)!
  
  if target == findArr[0] {
    targets.removeFirst()
    findArr.removeFirst()
  } else if (findArr.count / 2) < targetIndex {
    rotateQueue(true)
    findCount += 1
  } else {
    rotateQueue(false)
    findCount += 1
  }
}

while !targets.isEmpty {
  find()
}

print(findCount)
