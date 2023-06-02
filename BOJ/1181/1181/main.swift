//
//  main.swift
//  1181
//
//  Created by 이치훈 on 2023/06/01.
//

import Foundation

struct Word {
    var length = 0
    var data = ""
    var isOnly = true
}

let length = Int(String(readLine()!))!
var originWords = [String]()
var words = [Word]()

var tttttt = [String]()

for _ in 1...length {
    originWords.append(readLine()!)
}

tttttt = Array(Set(originWords))

for i in 0..<tttttt.count {
    words.append(Word(length: tttttt[i].count, data: tttttt[i]))
}

for j in 0..<words.count {
    for i in 0..<words.count - j {
        if i != 0 {
            if words[i - 1].data > words[i].data {
                let temp = words[i - 1]
                words[i - 1] = words[i]
                words[i] = temp
            }
        }
    }
}


for j in 0..<words.count {
    for i in 0..<words.count - j {
        if i != 0 {
            if words[i - 1].length > words[i].length {
                let temp = words[i - 1]
                words[i - 1] = words[i]
                words[i] = temp
            }
        }
    }
}


for i in 0..<words.count {
    print(words[i].data)
}
