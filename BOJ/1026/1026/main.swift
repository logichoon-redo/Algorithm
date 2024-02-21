//
//  main.swift
//  1026
//
//  Created by 이치훈 on 2/21/24.
//

let n = Int(readLine()!)!
var arrayA = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: <)
var arrayB = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: >)
var sum = 0

_=(0..<n).map { i in
  sum += (arrayA[i] * arrayB[i])
}

print(sum)
