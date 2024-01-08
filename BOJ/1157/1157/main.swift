//
//  main.swift
//  1157
//
//  Created by 이치훈 on 1/9/24.
//

let input = String(readLine()!).uppercased()
var alpha = [String: Int]()

for i in input {
  alpha[String(i), default: 0] += 1
}

let maxD = alpha.max { a, b in
  a.value < b.value
}!

let maxAlphas = alpha.filter {
  $0.value == maxD.value
}

if 1 < maxAlphas.count {
  print("?")
} else {
  print(maxD.key)
}
