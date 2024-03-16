//
//  main.swift
//  16435
//
//  Created by 이치훈 on 3/16/24.
//

let nl = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nl[0]
var l = nl[1]
var heights = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

_=heights.map {
  if l >= $0 {
    l += 1
  }
}

print(l)
