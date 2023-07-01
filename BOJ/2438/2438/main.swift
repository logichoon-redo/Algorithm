//
//  main.swift
//  2438
//
//  Created by 이치훈 on 2023/07/01.
//

let length = Int(String(readLine()!))!
for i in 1...length {
  for _ in 1...i {
    print("*", terminator: "")
  }
  print("")
}
