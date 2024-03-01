//
//  main.swift
//  1105
//
//  Created by 이치훈 on 3/1/24.
//

let lr = readLine()!.split(separator: " ").map { String($0) }
let l = Array(lr[0]).map { String($0) }, r = Array(lr[1]).map { String($0) }
var eightCount = 0

for i in 0..<l.count {
  if l[i] == r[i] {
    if l[i] == "8" {
      eightCount += 1
    }
    
  } else {
    break
  }
}

l.count == r.count ? print(eightCount) : print(0)
