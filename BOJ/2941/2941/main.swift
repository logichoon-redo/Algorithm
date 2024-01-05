//
//  main.swift
//  2941
//
//  Created by 이치훈 on 1/5/24.
//

import Foundation

var inputWord = readLine()!
var alphaCount = 0
let croatiaAlpha = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]

for i in croatiaAlpha {
  inputWord = inputWord.replacingOccurrences(of: i, with: "1")
}

print(inputWord.count)
