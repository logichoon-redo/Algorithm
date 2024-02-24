//
//  main.swift
//  2217
//
//  Created by 이치훈 on 2/24/24.
//

let n = Int(readLine()!)!
var ropes = [Int]()
var result = 0
_=(1...n).map { _ in
  ropes.append(Int(readLine()!)!)
}

ropes.sort()

_=(0..<n).map { i in
  result = max(result, ropes[i] * (n - i))
}

print(result)
