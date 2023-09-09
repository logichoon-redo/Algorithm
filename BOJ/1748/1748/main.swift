//
//  main.swift
//  1748
//
//  Created by 이치훈 on 2023/09/10.
//

var n = Int(String(readLine()!))!
var i = 1
var count = 0

while i <= n {
  count += n - i + 1
  i *= 10
}

print(count)
