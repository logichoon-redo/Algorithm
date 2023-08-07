//
//  main.swift
//  2566
//
//  Created by 이치훈 on 2023/08/07.
//

var rowMaxIndex = [Int]()
var column = [Int]()

for _ in 1...9 {
  let row = readLine()!.split(separator: " ").map {
    Int(String($0))!
  }
  let aftersort = row.sorted()
  rowMaxIndex.append(aftersort[8])
  column.append(row.firstIndex(of: aftersort[8])!)
}

let maxnum = rowMaxIndex.max()!
print(maxnum)

print(rowMaxIndex.firstIndex(of: maxnum)! + 1, terminator: " ")
print(column[rowMaxIndex.firstIndex(of: maxnum)!] + 1)
