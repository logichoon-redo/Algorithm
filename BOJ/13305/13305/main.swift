//
//  main.swift
//  13305
//
//  Created by 이치훈 on 2/26/24.
//

let n = Int(readLine()!)!
var roadLength = readLine()!.split(separator: " ").map { Int(String($0))! }
var priceLiter = readLine()!.split(separator: " ").map { Int(String($0))! }
var minPrice = Int.max
var sum = 0

_=(0..<roadLength.count).map { i in
  if priceLiter[i] <= minPrice {
    minPrice = priceLiter[i]
    sum += priceLiter[i] * roadLength[i]
  } else {
    sum += minPrice * roadLength[i]
  }
}

print(sum)
