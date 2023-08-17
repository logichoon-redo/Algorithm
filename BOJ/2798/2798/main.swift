//
//  main.swift
//  2798
//
//  Created by 이치훈 on 2023/08/17.
//

let nm = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
let n = nm[0]
let m = nm[1]
let card = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
var sum = 0

for i in 0..<n-2 {
  for j in i+1..<n-1 {
    for k in j+1..<n {
      if card[i] + card[j] + card[k] <= m {
        if card[i] + card[j] + card[k] > sum {
          sum = card[i] + card[j] + card[k]
        }
      }
    }
  }
}
print(sum)
