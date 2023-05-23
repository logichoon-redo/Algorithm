//
//  main.swift
//  1085
//
//  Created by 이치훈 on 2023/05/23.
//

let point = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

let x = point[0] //현재 좌표
let y = point[1]
let wDistance = point[2] - x //최대 좌표
let hDistance = point[3] - y
var buffer = [x, y, wDistance, hDistance]

print(buffer.min()!)
