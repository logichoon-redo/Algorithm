//
//  main.swift
//  11720
//
//  Created by 이치훈 on 2023/07/12.
//

let length = readLine()!
let result = Array(readLine()!).map {
  Int(String($0))!
}.reduce(into: 0) { result, num in
  result += num
}
print(result)
