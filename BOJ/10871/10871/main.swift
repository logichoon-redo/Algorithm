//
//  main.swift
//  10871
//
//  Created by 이치훈 on 2023/07/12.
//

let nx = readLine()!.split(separator: " ").map {Int(String($0))!}
let a = readLine()!.split(separator: " ").map {Int(String($0))!}

for i in 0..<nx[0] {
  if nx[1] > a[i] {
    print("\(a[i])", terminator: " ")
  }
}
