//
//  main.swift
//  1339
//
//  Created by 이치훈 on 3/2/24.
//

import Foundation

let n = Int(readLine()!)!
var words = [[String]](repeating: [], count: n)
_=(0..<n).map {
  words[$0] = Array(readLine()!).map { String($0) }
}
var alphaTable = [String : Int]()
var sum = 0

_=(0..<n).map { i in
  _=(0..<words[i].count).map { j in
    alphaTable[words[i][j], default: 0] += Int(pow(10, Double(words[i].count - j - 1)))
  }
}

var num = 9
_=alphaTable.sorted{ $0.value > $1.value }.map {
  sum += $0.value * num
  num -= 1
}

print(sum)
