//
//  main.swift
//  1920
//
//  Created by 이치훈 on 2023/05/18.
//

let findNumLength = Int(String(readLine()!))!
var findNums = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

let operandNumLength = Int(String(readLine()!))!
var operandNums = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

var temp: Int = 0

func soltNumbuers( soltNums: inout [Int], length: Int) {
    for i in 0...length - 1 {
        for j in 0..<length - i - 1 {
            if soltNums[j] > soltNums[j + 1] {
                temp = soltNums[j]
                soltNums[j] = soltNums[j + 1]
                soltNums[j + 1] = temp
            }
        }
    }
}

soltNumbuers(soltNums: &findNums, length: findNumLength)

for i in 0...findNumLength - 1 {
    if findNums[i] == operandNums[i] {
        print(1)
    }
    else {
        print(0)
    }
}
