//
//  main.swift
//  24313
//
//  Created by 이치훈 on 2023/08/05.
//

let input = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
let a1 = input[0], a0 = input[1]
let c = Int(String(readLine()!))!
let n = Int(String(readLine()!))!

(a1 * n + a0) <= (n * c) && a1 <= c  ? print(1) : print(0)
