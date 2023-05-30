//
//  main.swift
//  2908
//
//  Created by 이치훈 on 2023/05/30.
//

let nums = readLine()!.split(separator: " ").map {
    String($0.reversed())
}

if nums[0] > nums[1] {
    print(nums[0])
} else {
    print(nums[1])
}
