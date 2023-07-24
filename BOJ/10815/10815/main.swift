//
//  main.swift
//  10815
//
//  Created by 이치훈 on 2023/07/24.
//

let n = Int(String(readLine()!))!
var nNums = Set(readLine()!.split(separator: " ").map {
  Int(String($0))!
})

let m = Int(String(readLine()!))!
let mNums = readLine()!.split(separator: " ").map {
  Int(String($0))!
}

for mNums in mNums {
  print(nNums.contains(mNums) ? 1 : 0, terminator: " " )
}
