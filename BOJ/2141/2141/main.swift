//
//  main.swift
//  2141
//
//  Created by 이치훈 on 3/24/24.
//

import Foundation

let n = Int(readLine()!)!
var points = [(loca: Int, people: Int)]()
var pointSum = 1
_=(0..<n).map { _ in
  let point = readLine()!.split(separator: " ").map { Int(String($0))! }
  points.append((point[0], point[1]))
  pointSum += point[1]
}
points.sort {
  $0.loca < $1.loca
}
pointSum /= 2
var sum = 0

_=(0..<n).map { i in
  sum += points[i].people
  if sum >= pointSum {
    print(points[i].loca)
    exit(0)
  }
}
