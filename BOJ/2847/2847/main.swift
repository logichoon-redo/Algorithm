//
//  main.swift
//  2847
//
//  Created by 이치훈 on 3/6/24.
//

let n = Int(readLine()!)!
var scores = [Int]()
var reduCount = 0

_=(0..<n).map { _ in
  scores.append(Int(readLine()!)!)
}

_=stride(from: n-1, to: 0, by: -1).map { i in
  if scores[i-1] >= scores[i] {
    let nextReducation = scores[i-1] - scores[i]  + 1
    reduCount += nextReducation
    scores[i-1] -= nextReducation
  }
}

print(reduCount)
