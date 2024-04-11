//
//  main.swift
//  9625
//
//  Created by 이치훈 on 4/11/24.
//

let k = Int(readLine()!)!
var dpa = [Int](repeating: 0, count: k+1)
var dpb = [Int](repeating: 0, count: k+1)

dpa[0] = 1
dpb[0] = 0

_=(1...k).map { i in
  let dpSum = dpa[i-1] + dpb[i-1]
  dpa[i] = dpb[i-1]
  dpb[i] = dpSum
}

print(dpa[k], dpb[k], separator: " ")
