//
//  main.swift
//  1018
//
//  Created by 이치훈 on 2023/08/17.
//

let nm = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
let row = nm[0]
let col = nm[1]
var arr = [[String]]()
var result = 999

let white =
[["W","B","W","B","W","B","W","B"],
["B","W","B","W","B","W","B","W"],
["W","B","W","B","W","B","W","B"],
["B","W","B","W","B","W","B","W"],
["W","B","W","B","W","B","W","B"],
["B","W","B","W","B","W","B","W"],
["W","B","W","B","W","B","W","B"],
["B","W","B","W","B","W","B","W"]]

let black =
[["B","W","B","W","B","W","B","W"],
["W","B","W","B","W","B","W","B"],
["B","W","B","W","B","W","B","W"],
["W","B","W","B","W","B","W","B"],
["B","W","B","W","B","W","B","W"],
["W","B","W","B","W","B","W","B"],
["B","W","B","W","B","W","B","W"],
["W","B","W","B","W","B","W","B"]]

for _ in 0..<row {
  arr.append(readLine()!.map { String($0) })
}

func compare(trow: Int, tcol: Int) -> Int {
  var wCount = 0
  var bCount = 0
  for i in 0..<8 {
    for j in 0..<8 {
      if white[i][j] != arr[i + trow][j + tcol] {
        wCount += 1
      }
      if black[i][j] != arr[i + trow][j + tcol] {
        bCount += 1
      }
    }
  }
  
  return min(wCount, bCount)
}

for i in 0...row - 8 {
  for j in 0...col - 8 {
    result = min(compare(trow: i, tcol: j), result)
  }
}
print(result)
