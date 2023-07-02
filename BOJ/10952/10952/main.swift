//
//  main.swift
//  10952
//
//  Created by 이치훈 on 2023/07/02.
//

while let num = readLine() {
  if num != "0 0" {
    let result = num.split(separator: " ").map {Int($0)!}
    print(result[0] + result[1])
  }else{
    break
  }
}
