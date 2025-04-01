//
//  main.swift
//  7568
//
//  Created by 이치훈 on 4/1/25.
//

let n = Int(readLine()!)!
var arr: [(Int, Int)] = []
var result: [Int] = [Int](repeating: 1, count: n)

for _ in 0..<n {
  let input = readLine()!.split(separator: " ").map { Int($0)! }
  arr.append((input[0], input[1]))
}

for i in 0..<n {
  let target = arr[i]
  _=arr.map { j in
    if target.0 < j.0 && target.1 < j.1 {
      result[i] += 1
    }
  }
}

print(result.map {String($0)}.joined(separator: " "))
