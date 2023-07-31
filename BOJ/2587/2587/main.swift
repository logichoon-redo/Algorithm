//
//  main.swift
//  2587
//
//  Created by 이치훈 on 2023/07/31.
//

var nums = [Int]()

for _ in 1...5 {
  nums.append(Int(String(readLine()!))!)
}

nums.sort()

let sum = nums.reduce(0) { partialResult, item in
  return partialResult + item
}

print(sum / 5)
print(nums[2])
