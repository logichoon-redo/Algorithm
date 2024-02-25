//
//  main.swift
//  1789
//
//  Created by 이치훈 on 2/25/24.
//

let s = Int(readLine()!)!
var sum = 0
var answer = 0
var i = 1

while true {
  sum += i
  answer += 1
  i += 1
  
  if sum == s { break }
  else if sum > s { answer -= 1; break }
}

print(answer)
