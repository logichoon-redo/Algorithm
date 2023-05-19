//
//  main.swift
//  2750
//
//  Created by 이치훈 on 2023/05/19.
//

let length = Int(String(readLine()!))!
var nums = [Int]()

for _ in 1...length {
    let item = Int(String(readLine()!))!
    nums.append(item)
}

nums.sort()

for i in 0...nums.count - 1 {
    print(nums[i])
}
