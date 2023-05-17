//
//  main.swift
//  2562
//
//  Created by 이치훈 on 2023/05/17.
//

var nums = [Int]()
for _ in 1...9 {
    nums.append(Int(String(readLine()!))!)
}

let numMax = nums.max()!
print(numMax
)
for i in 0...9 - 1 {
    if nums[i] == numMax {
        print(i + 1)
    }
}
