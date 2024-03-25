//
//  main.swift
//  12931
//
//  Created by 이치훈 on 3/25/24.
//

let n = Int(readLine()!)!
var array = readLine()!.split(separator: " ").map { Int(String($0))! }
let target = [Int](repeating: 0, count: n)
var operCount = 0

while target != array {
  _=(0..<n).map { i in
    if array[i] % 2 == 1 {
      array[i] -= 1
      operCount += 1
    }
  }
  
  if target == array { break }
  
  _=(0..<n).map { i in
    array[i] /= 2
  }
  operCount += 1
}

print(operCount)
