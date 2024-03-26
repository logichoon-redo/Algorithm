//
//  main.swift
//  15553
//
//  Created by 이치훈 on 3/26/24.
//

let nk = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nk[0], k = nk[1]
var time = [Int]()
_=(0..<n).map { _ in
  time.append(Int(readLine()!)!)
}
var timeDistance = [Int]()
_=(0..<n-1).map { i in
  timeDistance.append(time[i+1] - time[i])
}
timeDistance.sort(by: >)

_=(0..<k-1).map { i in
  timeDistance[i] = 1
}

print(timeDistance.reduce(0, +) + 1)
