//
//  main.swift
//  6550
//
//  Created by 이치훈 on 3/8/24.
//

while let input = readLine() {
  let st = input.split(separator: " ").map { String($0) }
  let s = Array(st[0]).map { String($0) }
  let t = Array(st[1]).map { String($0) }
  var sIndex = 0
  
  for i in t {
    if s[sIndex] == i {
      sIndex += 1
      
      if sIndex == s.endIndex {
        break
      }
    }
  }
  
  sIndex == s.endIndex ? print("Yes") : print("No")
}
