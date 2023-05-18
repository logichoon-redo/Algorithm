//
//  main.swift
//  2675
//
//  Created by 이치훈 on 2023/05/18.
//

for _ in 1...Int(readLine()!)! {
    let test = readLine()!.split(separator: " ")
    for c in test[1] {
        for _ in 1...Int(test[0])! {
            print(c, terminator: "")
        }
    }
    print("")
}
