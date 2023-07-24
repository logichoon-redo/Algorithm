//
//  main.swift
//  11931
//
//  Created by 이치훈 on 2023/07/24.
//

let length = Int(String(readLine()!))!
var num = [Int]()

for _ in 1...length {
  num.append(Int(String(readLine()!))!)
}

let result = num.sorted {
  $0 > $1
}

for i in 0..<result.count {
  print(result[i])
}
