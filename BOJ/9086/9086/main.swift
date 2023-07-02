//
//  main.swift
//  9086
//
//  Created by 이치훈 on 2023/07/02.
//

let length = Int(String(readLine()!))!
for _ in 1...length {
  let string = Array(readLine()!)
  print("\(string.first!)\(string.last!)")
}
