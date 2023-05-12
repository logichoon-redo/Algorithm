//
//  main.swift
//  10950
//
//  Created by 이치훈 on 2023/05/13.
//

let testCase = Int(readLine()!)!
var elements = [Int]()

for _ in 1...testCase {
    elements = readLine()!.split(separator: " ").map {
        Int(String($0))!
    }
    print(elements[0] + elements[1])
}
