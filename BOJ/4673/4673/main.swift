//
//  main.swift
//  4673
//
//  Created by 이치훈 on 1/4/24.
//

var nonSelfNum = [Int](repeating: 0, count: 10501)

for i in 1...9 {
  nonSelfNum[i] = i + i
}

for i in 10...10000 {
  var sum = "\(i)".map{String($0)}.reduce(0) {
    Int(exactly: $0)! + Int($1)!
  }
  sum += i
  
  nonSelfNum[sum] = sum
}

// nonSelfNum에 해당값 없으면 SelfNum
for i in 0...9999 {
  if !nonSelfNum.contains(i) {
    print(i)
  }
}
