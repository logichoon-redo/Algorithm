//
//  main.swift
//  2447
//
//  Created by 이치훈 on 2023/07/24.
//

let n = Int(String(readLine()!))!

func makeStar(n: Int, pattern: [String]) {
  if n == 1 {
    pattern.forEach {
      print($0)
    }
    return
  }
  
  let side = pattern.map {
    $0 + $0 + $0
  }
  let space = pattern.map {
    $0 + String(repeating: " ", count: $0.count) + $0
  }
  
  makeStar(n: n/3, pattern: side + space + side)
}

makeStar(n: n, pattern: ["*"])
