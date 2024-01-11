//
//  main.swift
//  11328
//
//  Created by 이치훈 on 1/11/24.
//

let n = Int(String(readLine()!))!

for i in 1...n {
  let stringValue = readLine()!.split(separator: " ").map{String($0)}
  var alphabet = Array(repeating: 0, count: 26)
  var flag = true
  
  for s in stringValue[0]{
    alphabet[Int(exactly: s.asciiValue!)! - 97] += 1
  }
  for s in stringValue[1]{
    alphabet[Int(exactly: s.asciiValue!)! - 97] -= 1
  }
  
  for a in alphabet {
    if a != 0 {
      flag = false
      break
    }
  }
  
  print(flag ? "Possible" : "Impossible")
}
