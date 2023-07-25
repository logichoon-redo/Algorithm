//
//  main.swift
//  2577
//
//  Created by 이치훈 on 2023/07/26.
//

let a = Int(String(readLine()!))!
let b = Int(String(readLine()!))!
let c = Int(String(readLine()!))!

var sum = a * b * c

var dict = [Int: Int]()
_=(0...9).map {
  dict[$0, default: 0] += 1
}

while sum > 0 {
  let n = sum % 10
  sum /= 10
  dict[n, default: 0] += 1
}

for i in 0..<dict.count {
  print(dict[i]! - 1)
}
