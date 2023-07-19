//
//  main.swift
//  1181
//
//  Created by 이치훈 on 2023/06/01.
//

let n = Int(String(readLine()!))!
var dict = [String:Int]()

for _ in 1...n {
  let word = readLine()!
  dict[word, default: 0] += 1
}

let dictSort = dict.sorted {
  $0.key.count == $1.key.count ? $0.key < $1.key : $0.key.count < $1.key.count
}

for i in 0..<dictSort.count {
  print(dictSort[i].key)
}
