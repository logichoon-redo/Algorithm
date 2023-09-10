//
//  main.swift
//  2609
//
//  Created by 이치훈 on 2023/09/11.
//

let input = readLine()!.split(separator: " ").map {
  Int(String($0))!
}

var max = input.max()!
var min = input.min()!
var i = max%min

while i > 0 {
  max = min
  min = i
  i = max%min
}

print(min)
print(input[0]*input[1]/min)
