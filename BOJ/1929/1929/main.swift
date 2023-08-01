//
//  main.swift
//  1929
//
//  Created by 이치훈 on 2023/08/01.
//

let mn = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
let m = mn[0]
let n = mn[1]

var isPrimeNum = Array(repeating: true, count: n + 1)
isPrimeNum[1] = false

for i in 2...n {
  if isPrimeNum[i] {
    var j = 2
    while i * j <= n {
      isPrimeNum[i * j] = false
      j += 1
    }
  }
}

for i in m...n {
  if isPrimeNum[i] {
    print(i)
  }
}
