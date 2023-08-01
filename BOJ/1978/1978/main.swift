//
//  main.swift
//  1978
//
//  Created by 이치훈 on 2023/08/01.
//

let length = Int(String(readLine()!))!
let nums = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
var count = 0

for i in nums {
  if i == 1 {
    count += 1
    continue
  }
  
  for j in 2..<i {
    if i % j == 0 {
      count += 1
      break
    }
  }
}

print(nums.count - count)
