//
//  main.swift
//  25305
//
//  Created by 이치훈 on 2023/07/31.
//

let nk = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
var scores = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
scores.sort()
scores.reverse()

print(scores[nk[1] - 1])
