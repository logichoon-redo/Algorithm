//
//  main.swift
//  1427
//
//  Created by 이치훈 on 2023/07/07.
//

var num = Array(readLine()!) 
num.sort()
num.reverse()
_ = num.map {print($0, terminator: "")}
