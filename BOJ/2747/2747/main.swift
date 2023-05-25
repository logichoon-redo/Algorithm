//
//  main.swift
//  2747
//
//  Created by 이치훈 on 2023/05/25.
//

func fibonacci(_ n: Int) -> Int {
    var n = n, a = 0, b = 1
    var temp = a
    while n > 0 {
        a = b
        b = temp+b
        temp = a
        n -= 1
    }
    return a
}

let n = Int(String(readLine()!))!
print(fibonacci(n))
