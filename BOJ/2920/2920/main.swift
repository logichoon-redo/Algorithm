//
//  main.swift
//  2920
//
//  Created by 이치훈 on 2023/05/18.
//

let scale = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

func scaleType() {
    if scale[0] == 1 {
        for i in 0...scale.count - 2 { // 1...8
            if scale[i] > scale[i + 1] {
                print("mixed")
                return
            }
        }
        print("ascending")
    } else if scale[0] == 8 { // 8...1
        for i in 0...scale.count - 2 {
            if scale[i] < scale[i + 1] {
                print("mixed")
                return
            }
        }
        print("descending")
    } else {
        print("mixed")
        return
    }
}

scaleType()
