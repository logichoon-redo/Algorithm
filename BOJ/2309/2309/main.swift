//
//  main.swift
//  2309
//
//  Created by 이치훈 on 2023/07/21.
//

var dwarf = [Int]()
var iIndex = 0
var jIndex = 0

for _ in 1...9 {
  dwarf.append(Int(String(readLine()!))!)
}

let excessSum = dwarf.reduce(0, +) - 100

for i in 0..<8 {
  for j in i+1..<9 {
    if dwarf[i] + dwarf[j] == excessSum {
      iIndex = i
      jIndex = j
      break
    }
  }
}
dwarf.remove(at: iIndex)
dwarf.remove(at: jIndex - 1)
dwarf.sort()

for i in 0..<7 {
  print(dwarf[i])
}
