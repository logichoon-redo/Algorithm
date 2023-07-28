//
//  main.swift
//  11047
//
//  Created by 이치훈 on 2023/07/28.
//

let nk = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
var coins = [Int]()
var price = nk[1]
var count = 0

for _ in 1...nk[0] {
  coins.append(Int(String(readLine()!))!)
}
coins.reverse()

_=coins.map {
  count += price / $0
  price %= $0
}

print(count)
