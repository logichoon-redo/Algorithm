//
//  main.swift
//  1041
//
//  Created by 이치훈 on 3/5/24.
//

import Foundation

let n = Int(readLine()!)!
var diceNums = readLine()!.split(separator: " ").map { Int(String($0))! }
var combineTwo = [Int]()
var combineThree = [Int]()
let minNum = diceNums.min()!

if n == 1 {
  diceNums.sort()
  _=diceNums.popLast()
  
  print(diceNums.reduce(0, +))
  exit(0)
}

for i in 0..<5 {
  for j in i+1..<6 {
    if j == 5-i { continue }
    let combineTwoTemp = diceNums[i] + diceNums[j]
    combineTwo.append(combineTwoTemp)
    
    for k in j+1..<6 {
      if k == 5-j || k == 5-i { continue }
      combineThree.append(combineTwoTemp + diceNums[k])
    }
  }
}

combineTwo.sort()
combineThree.sort()

let useThree = combineThree[0]
let useTwo = combineTwo[0]

let topVertex = useThree * 4
let corner = (useTwo * (n-1)) * 4 + (useTwo * (n-2)) * 4
let face = (minNum * (n-2) * (n-2)) + (minNum * (n-1) * (n-2) * 4)

print(topVertex + corner + face)
