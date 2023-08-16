//
//  main.swift
//  11399
//
//  Created by 이치훈 on 2023/08/16.
//

let n = Int(String(readLine()!))!
var people = readLine()!.split(separator: " ").map {
  Int(String($0))!
}

people = people.sorted()
var result = 0

for i in 0..<n {
  result += people[...i].reduce(0, +)
}
print(result)
