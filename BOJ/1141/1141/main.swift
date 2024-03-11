//
//  main.swift
//  1141
//
//  Created by 이치훈 on 3/11/24.
//

let n = Int(readLine()!)!
var words = [String]()
var nonPrefix = [String]()
_=(0..<n).map { _ in
  words.append(readLine()!)
}
words.sort {
  $0.count > $1.count
}
nonPrefix.append(words[0])

word: for i in 1..<n {
  for j in 0..<nonPrefix.count {
    if nonPrefix[j].hasPrefix(words[i]) {
      continue word
    }
  }
  
  nonPrefix.append(words[i])
}

print(nonPrefix.count)
