//
//  main.swift
//  1461
//
//  Created by 이치훈 on 3/4/24.
//

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0], m = nm[1]
var pos = [Int]()
var neg = [Int]()


_=readLine()!.split(separator: " ").map {
  let num = Int(String($0))!
  if 0 < num {
    pos.append(num)
  } else {
    neg.append(abs(num))
  }
}

pos.sort()
neg.sort()

var minStep = 0

if pos.last ?? 0 > neg.last ?? 0 {
  minStep = pos.popLast() ?? 0
  _=(1..<m).map { _ in
    _=pos.popLast()
  }
} else {
  minStep = neg.popLast() ?? 0
  _=(1..<m).map { _ in
    _=neg.popLast()
  }
}

for _ in 0..<pos.count {
  if pos.isEmpty { break }
  
  minStep += pos.popLast()! * 2
  _=(1..<m).map { _ in
    _=pos.popLast()
  }
}

for _ in 0..<neg.count {
  if neg.isEmpty { break }
  
  minStep += neg.popLast()! * 2
  _=(1..<m).map { _ in
    _=neg.popLast()
  }
}

print(minStep)
