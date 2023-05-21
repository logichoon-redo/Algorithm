//
//  main.swift
//  10811
//
//  Created by 이치훈 on 2023/05/21.
//

let command = readLine()!.split(separator: " ").map {
    Int(String($0))!
}
var basket = [Int]()
var sequence = [Int]()

for i in 1...command[0] {
    basket.append(i)
}

for _ in 1...command[1] {
    sequence = readLine()!.split(separator: " ").map {
        Int(String($0))!
    }
    
    var tempArray = basket[sequence[0] - 1...sequence[1] - 1]
    tempArray.reverse()
    
    basket[sequence[0] - 1...sequence[1] - 1] = tempArray
}

for i in 0..<basket.count {
    print(basket[i], terminator: " ")
}
