//
//  main.swift
//  11650
//
//  Created by 이치훈 on 2023/07/20.
//

let n = Int(String(readLine()!))!
var point = [(Int, Int)]()

for _ in 1...n {
  let xy = readLine()!.split(separator: " ").map { Int(String($0))! }
  point.append((xy[0], xy[1]))
}

let pointSorted = point.sorted {
  $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 < $1.0
}

for i in 0..<point.count {
  print("\(pointSorted[i].0) \(pointSorted[i].1)")
}
