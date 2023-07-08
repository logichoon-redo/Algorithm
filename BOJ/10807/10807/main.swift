//
//  main.swift
//  10807
//
//  Created by 이치훈 on 2023/07/08.
//

let length = Int(String(readLine()!))!
let nums = readLine()!.split(separator: " ").map {Int($0)}
let v = Int(String(readLine()!))!

var result = nums.filter {
  $0 == v
}

print(result.count)
