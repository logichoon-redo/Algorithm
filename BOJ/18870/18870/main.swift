//
//  main.swift
//  18870
//
//  Created by 이치훈 on 2023/08/11.
//

let n = Int(String(readLine()!))!
let xArr = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
let sortArr = xArr.sorted()
var dict = [Int: Int]()

for i in 0..<n {
  if i != 0 && sortArr[i] == sortArr[i - 1] {
    continue
  }
  dict[sortArr[i]] = dict.count
}

_=xArr.map {
  print(dict[$0]!, terminator: " ")
}
