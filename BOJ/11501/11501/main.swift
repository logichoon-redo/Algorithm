//
//  main.swift
//  11501
//
//  Created by 이치훈 on 3/9/24.
//

let t = Int(readLine()!)!
_=(1...t).map { _ in
  let n = Int(readLine()!)!
  let stock = readLine()!.split(separator: " ").map { Int(String($0))! }
  var maxPrice = Int.min
  var priceSum = 0

  _=stride(from: n-1, to: -1, by: -1).map { i in
    if stock[i] > maxPrice {
      maxPrice = stock[i]
    } else {
      priceSum += maxPrice - stock[i]
    }
  }
  
  print(priceSum)
}
