//
//  main.swift
//  10809
//
//  Created9 by 이치훈 on 2023/05/22.
//

let word = Array(readLine()!)

for i in Character("a").asciiValue!...Character("z").asciiValue! {
    var char = Character(UnicodeScalar(i))
    if word.contains(char) {
        print("\(word.index(of: char)!)", terminator: " ")
    }
    else {
        print("-1", terminator: " ")
    }
}

func index(of element: Character) -> Int? {
    for i in 0..<word.count {
        if word[i] == element {
            return i
        }
    }
    return nil
}
