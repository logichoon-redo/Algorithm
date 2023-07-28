//
//  main.swift
//  5585
//
//  Created by 이치훈 on 2023/07/28.
//

let coins = [500, 100, 50, 10, 5, 1]
var price = 1000 - Int(String(readLine()!))!
var count = 0

for coin in coins {
  count += price / coin
  price %= coin
}

print(count)
