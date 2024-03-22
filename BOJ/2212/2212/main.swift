//
//  main.swift
//  2212
//
//  Created by 이치훈 on 3/22/24.
//

import Foundation

let n = Int(readLine()!)!
let k = Int(readLine()!)!
var sensor = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var distance = [Int]()
if n <= k {
  print(0)
  exit(0)
}

_=(0..<n-1).map { i in
  distance.append(abs(sensor[i] - sensor[i+1]))
}
distance.sort()

_=(1..<k).map { _ in
  distance.popLast()
}

print(distance.reduce(0, +))
