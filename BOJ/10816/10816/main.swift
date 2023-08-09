//
//  main.swift
//  10816
//
//  Created by 이치훈 on 2023/08/09.
//

let n = Int(String(readLine()!))!
let nArr = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
let m = Int(String(readLine()!))!
let mArr = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
var dict = [Int: Int]()

for i in 0..<n {
  dict[nArr[i], default: 0] += 1
}

for i in 0..<m {
  print(dict[mArr[i]] ?? 0, terminator: " ")
}
