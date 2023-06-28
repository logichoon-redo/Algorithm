//
//  main.swift
//  1874
//
//  Created by 이치훈 on 2023/06/28.
//

let n = Int(String(readLine()!))!
var stack = [Int]()
var result = ""
var current = 0

for _ in 0..<n {
  let target = Int(String(readLine()!))!
  
  while current < target {
    current += 1
    stack.append(current)
    result += "+\n"
  }
  
  if stack.last == target {
    stack.removeLast()
    result += "-\n"
  }
  else {
    print("NO")
    result = ""
    break
  }
}

print(result)
