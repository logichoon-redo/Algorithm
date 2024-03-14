//
//  main.swift
//  2812
//
//  Created by 이치훈 on 3/14/24.
//

let nk = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nk [0]
var k = nk[1]
let numbers = Array(readLine()!).map { Int(String($0))! }
var stack = [Int]()

_=(0..<n).map { i in
  while !stack.isEmpty && stack.last! < numbers[i] && 0 < k {
    _=stack.popLast()
    k -= 1
  }
  
  stack.append(numbers[i])
}

_=(0..<stack.count-k).map {
  print(stack[$0], terminator: "")
}
