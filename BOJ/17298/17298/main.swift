//
//  main.swift
//  17298
//
//  Created by 이치훈 on 2023/07/28.
//

let length = Int(String(readLine()!))!
var arr = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
var stack = [Int]()

for i in 0..<length {
  
  while !stack.isEmpty && arr[stack.last!] < arr[i] {
    arr[stack.removeLast()] = arr[i]
  }
  stack.append(i)
}

for i in stack {
  arr[i] = -1
}

print(arr.map{String($0)}.joined(separator: " "))
