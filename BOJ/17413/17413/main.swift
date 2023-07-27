//
//  main.swift
//  17413
//
//  Created by 이치훈 on 2023/07/27.
//

let s = readLine()!
var bracketStack = ""
var word = ""

for char in s {
  if char == "<" {
    bracketStack.append(char)
    if !word.isEmpty {
      print(String(word.reversed()), terminator: "")
      word = ""
    }
  }else if char == ">" {
    bracketStack.append(char)
    print(bracketStack, terminator: "")
    bracketStack = ""
  } else {
    
    if bracketStack.first == "<" {
      bracketStack.append(char)
    } else if char == " " {
      print(String(word.reversed()), terminator: " ")
      word = ""
    } else {
      word.append(char)
    }
    
  }
}

if !word.isEmpty {
  print(String(word.reversed()))
}
