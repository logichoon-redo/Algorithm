//
//  main.swift
//  14918
//
//  Created by 이치훈 on 1/10/24.
//

let input = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
print(input[0] + input[1])
