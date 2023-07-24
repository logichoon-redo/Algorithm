//
//  main.swift
//  11651
//
//  Created by 이치훈 on 2023/07/24.
//

let length = Int(String(readLine()!))!
var point = [(Int, Int)]()

for _ in 1...length {
  let command = readLine()!.split(separator: " ").map { Int(String($0))! }
  point.append((command[0], command[1]))
}

let result = point.sorted {
  $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1
}

for i in 0..<result.count {
  print("\(result[i].0) \(result[i].1)")
}
