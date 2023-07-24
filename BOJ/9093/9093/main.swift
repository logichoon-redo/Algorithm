//
//  main.swift
//  9093
//
//  Created by 이치훈 on 2023/07/24.
//

let length = Int(String(readLine()!))!

for _ in 1...length {
  var words = readLine()!.split(separator: " ").map {
    Array($0)
  }
  
  for i in 0..<words.count {
    words[i].reverse()
  }
  
  for i in 0..<words.count {
    for j in 0..<words[i].count {
      print(words[i][j], terminator: "")
    }
    print(terminator: " ")
  }
}
