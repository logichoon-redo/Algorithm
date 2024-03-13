//
//  main.swift
//  19539
//
//  Created by 이치훈 on 3/13/24.
//

let n = Int(readLine()!)!
var target = readLine()!.split(separator: " ").map { Int(String($0))! }
let sum = target.reduce(0, +)
var twoWater = 0
let totalWater = sum / 3

if sum % 3 == 0 {
  target = target.map {
    $0 / 2
  }
  
  twoWater = target.reduce(0, +)
  
  twoWater >= totalWater ? print("YES") : print("NO")
} else {
  print("NO")
}
