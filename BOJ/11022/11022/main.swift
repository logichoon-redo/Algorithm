//
//  main.swift
//  11022
//
//  Created by 이치훈 on 2023/07/01.
//

let length = Int(String(readLine()!))!
for i in 1...length {
  let num = readLine()!.split(separator: " ").map {Int($0)!}
  print("Case #\(i): \(num[0]) + \(num[1]) = \(num[0] + num[1])")
}
