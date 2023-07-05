//
//  main.swift
//  1264
//
//  Created by 이치훈 on 2023/07/05.
//

while let string = readLine() {
  if string == "#" {
    break
  }
  var vowelCount = 0
  let temp = Array(string)
  
  for i in 0..<temp.count {
    switch temp[i] {
    case "A", "a", "E", "e", "I", "i", "O", "o", "U", "u":
      vowelCount += 1
    default:
      break
    }
  }
  print(vowelCount)
}
