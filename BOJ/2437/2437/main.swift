//
//  main.swift
//  2437
//
//  Created by 이치훈 on 3/7/24.
//

let n = Int(readLine()!)!
let weights = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var sum = 0
var min = Int.max

if weights[0] > 1 {
  print(1)
} else {
  for weight in weights {
    if min < weight { break }
    sum += weight
    min = sum + 1
  }
  print(min)
}
