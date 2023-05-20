//
//  main.swift
//  2869
//
//  Created by 이치훈 on 2023/05/20.
//
import Foundation

let snail = readLine()!.split(separator: " ").map {
    Double(String($0))!
}
let climbing = snail[0] //A
let drop = snail[1] //B
let length = snail[2] //V

let day = ceil((length - drop) / (climbing - drop))

print(Int(day))
