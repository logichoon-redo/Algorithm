//
//  main.swift
//  18310
//
//  Created by 이치훈 on 3/17/24.
//

let n = Int(readLine()!)!
let houses = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

if n % 2 == 0 {
  print(houses[n/2-1])
} else {
  print(houses[n/2])
}
