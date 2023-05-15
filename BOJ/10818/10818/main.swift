//
//  main.swift
//  10818
//
//  Created by 이치훈 on 2023/05/15.
//

let length = Int(String(readLine()!))!
var num = [Int]()

num = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

//var min: Int = num[0]
//var max: Int = num[0]
//
//for i in 1...length - 1 {
//    if min > num[i] {
//        min = num[i]
//    }
//    else if max < num[i] {
//        max = num[i]
//    }
//}
//
//print("\(min) \(max)")


// 정답:
print("\(num.min()!) \(num.max()!)")
