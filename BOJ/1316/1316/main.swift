//
//  main.swift
//  1316
//
//  Created by 이치훈 on 2023/09/10.
//

let n = Int(String(readLine()!))!
var count = 0

for _ in 1...n {
  let word = readLine()!
  var arr = [Character]()
  var token = false
  
  for i in word {
    if !arr.contains(i) {
      arr.append(i)
    } else {
      if arr.last != i {
        token = true
      }
    }
  }
  
  if !token {
    count += 1
  }
}

print(count)
