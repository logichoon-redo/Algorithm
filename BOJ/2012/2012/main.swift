//
//  main.swift
//  2012
//
//  Created by 이치훈 on 3/13/24.
//

let n = Int(readLine()!)!
var rank = [Int]()
var sum = 0
_=(0..<n).map { _ in
  rank.append(Int(readLine()!)!)
}
rank.sort()

_=(0..<n).map { i in
  sum += abs(rank[i] - (i+1))
}

print(sum)
