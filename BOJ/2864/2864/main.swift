//
//  main.swift
//  2864
//
//  Created by 이치훈 on 3/18/24.
//

var minValue = ""
var maxValue = ""

_=readLine()!.map {  let num = String($0)
  if num == "5" || num == "6" {
    minValue += "5"
    maxValue += "6"
  } else {
    minValue += num
    maxValue += num
  }
}

let minOper = minValue.split(separator: " ")
let maxOper = maxValue.split(separator: " ")

print(Int(minOper[0])! + Int(minOper[1])!, Int(maxOper[0])! + Int(maxOper[1])!, separator: " ")
