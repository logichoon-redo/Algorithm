//
//  main.swift
//  2108
//
//  Created by 이치훈 on 2023/07/24.
//

import Foundation

let length = Int(String(readLine()!))!
var nums = [Double]()
var lowestDic = [Double: Int]()

var average = 0.0
var mid = 0.0
var lowest = 0.0
var range = 0

for _ in 1...length {
  let item = Double(String(readLine()!))!
  nums.append(item)
  lowestDic[item, default: 0] += 1
}
nums.sort()

average = nums.reduce(0.0, +) / Double(nums.count)
let roundAverage = round(average)

mid = nums[Int(nums.count / 2)]

func getLowest() -> Double {
  let result = Array(lowestDic.sorted {
    $0.value == $1.value ? $0.key < $1.key : $0.value > $1.value
  })
  
  if result.count <= 1 {
    return result[0].key
  }
  
  if result[0].value == result[1].value {
    return result[1].key
  } else {
    return result[0].key
  }
}
lowest = getLowest()

range = Int(nums.max()! - nums.min()!)

print(Int(roundAverage))
print(Int(mid))
print(Int(lowest))
print(range)
