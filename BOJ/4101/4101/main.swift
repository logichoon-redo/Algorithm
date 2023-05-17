//
//  main.swift
//  4101
//
//  Created by 이치훈 on 2023/05/17.
//

var nums = [Int]()
var togle: Int = 1

while togle != 0 {
    nums = readLine()!.split(separator: " ").map {
        Int(String($0))!
    }
    togle = isLargeNum()
}

func isLargeNum() -> Int {
    if nums[0] > nums[1] {
        print("Yes")
        return 1
    }
    else if nums[0] == 0 && nums[1] == 0 {
        return 0
    }
    
    print("No")
    return 1
}

