//
//  main.swift
//  1193
//
//  Created by 이치훈 on 3/28/25.
//

var x = Int(readLine()!)!
var i = 1

while x > i {
  x -= i
  i += 1
}

if i % 2 == 0 {
  print("\(x)/\(i-x+1)")
} else {
  print("\(i-x+1)/\(x)")
}
