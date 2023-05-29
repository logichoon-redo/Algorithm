//
//  main.swift
//  25304
//
//  Created by 이치훈 on 2023/05/29.
//

let existValue = Int(String(readLine()!))!
let length = Int(String(readLine()!))!
var result = 0

for _ in 1...length {
    let temp = readLine()!.split(separator: " ").map {
        Int(String($0))!
    }
    result += temp[0] * temp[1]
}

if existValue == result {
    print("Yes")
} else {
    print("No")
}
