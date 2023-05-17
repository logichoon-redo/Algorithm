//
//  main.swift
//  1546
//
//  Created by 이치훈 on 2023/05/17.
//

let length = Float(String(readLine()!))!
var element = readLine()!.split(separator: " ").map {
    Float(String($0))!
}

print(element.map {
    $0 / element.max()! * 100
}.reduce(0) { result, num in
    result + num
} / length)
