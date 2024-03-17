//
//  main.swift
//  15720
//
//  Created by 이치훈 on 3/17/24.
//

let bcd = readLine()!.split(separator: " ").map { Int(String($0))! }
let b = bcd[0], c = bcd[1], d = bcd[2]
var minCount = b
minCount = min(minCount, c)
minCount = min(minCount, d)
let bugers = readLine()!.split(separator: " ").map { Double(String($0))! }.sorted(by: >)
let sides = readLine()!.split(separator: " ").map { Double(String($0))! }.sorted(by: >)
let drinks = readLine()!.split(separator: " ").map { Double(String($0))! }.sorted(by: >)
var priceSum = 0.0
var discaountPrice = 0.0

func countPrices(count: Int, prices: [Double]) {
  _=(0..<count).map { i in
    priceSum += prices[i]
    if (0..<minCount) ~= i {
      discaountPrice += (prices[i] * 0.9)
    } else {
      discaountPrice += prices[i]
    }
  }
}

countPrices(count: b, prices: bugers)
countPrices(count: c, prices: sides)
countPrices(count: d, prices: drinks)

print(Int(priceSum))
print(Int(discaountPrice))
