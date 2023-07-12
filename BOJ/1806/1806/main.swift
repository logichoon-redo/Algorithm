//
//  main.swift
//  1806
//
//  Created by 이치훈 on 2023/07/12.
//

import Foundation

let read = readLine()!.split(separator: " ").map {Int(String($0))!}
let n = read[0] // nums.count
let s = read[1] // 15
var nums = readLine()!.split(separator: " ").map {Int(String($0))!}

var end = 0
var sum = 0
var count = 0
var result = Int.max

for start in 0..<n {
  while sum < s && end < n {
    sum += nums[end]
    end += 1
    count += 1
  }
  if sum >= s {
    result = min(result, count)
  }
  sum -= nums[start]
  count -= 1
}
print(result == Int.max ? 0 : result)
