//
//  main.swift
//  10813
//
//  Created by 이치훈 on 2023/05/19.
//

let readInfo = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

var basket = [Int]()

for i in 1...readInfo[0] {
    basket.append(i)
}

func bringCommand() {
    for _ in 1...readInfo[1] {
        let command = readLine()!.split(separator: " ").map { Int(String($0))! }
        
        basket.swapAt(command[0] - 1, command[1] - 1)
    }
    for i in 0..<basket.count {
        print(basket[i], terminator: " ")
    }
}

bringCommand()
