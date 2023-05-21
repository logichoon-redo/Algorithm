//
//  main.swift
//  3052
//
//  Created by 이치훈 on 2023/05/21.
//

var nums = [Int?]()
var count = 0
var temp = 0

for _ in 1...10 {
    nums.append(Int(String(readLine()!))! % 42)
}

for i in 0..<nums.count {
    temp = nums[i]!
    nums[i] = nil
    if !nums.contains(temp) { //중복되는 경우 없음
        count += 1
    }
    else {
    }
}

print(count)
