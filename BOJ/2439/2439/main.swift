//
//  main.swift
//  2439
//
//  Created by 이치훈 on 2023/05/14.
//

let length = Int(String(readLine()!))!

for i in 1...length {
    for _ in 0..<length - i {
        print(" ", terminator: "")
    }
    for _ in 0..<i {
        print("*", terminator: "")
    }
    print()
}
