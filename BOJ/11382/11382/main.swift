//
//  main.swift
//  11382
//
//  Created by 이치훈 on 2023/05/21.
//

let operand = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

print(operand[0] + operand[1] + operand[2])
