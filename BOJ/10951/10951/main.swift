//
//  main.swift
//  10951
//
//  Created by 이치훈 on 2023/07/02.
//

while let num = readLine() {
  let result = num.split(separator: " ").map {Int($0)!}
  print(result[0] + result[1])
}
