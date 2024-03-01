//
//  main.swift
//  10610
//
//  Created by 이치훈 on 3/1/24.
//

var n = Array(readLine()!).map { Int(String($0))! }
n.sort(by: >)
let sum = n.reduce(0) { $0 + $1 }

if n.last! != 0 || sum % 3 != 0 {
  print(-1)
} else {
  _=n.map {
    print($0, terminator: "")
  }
}
