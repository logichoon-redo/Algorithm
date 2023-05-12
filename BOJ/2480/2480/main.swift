//
//  main.swift
//  2480
//
//  Created by 이치훈 on 2023/05/12.
//

import Foundation

var diceNum = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

let firstnum = diceNum[0]
let secnum = diceNum[1]
let thirnum = diceNum[2]

func prize(){
    if firstnum == secnum && firstnum == thirnum {
        print("\(10000 + (firstnum * 1000))")
    }
    else if firstnum == secnum || firstnum == thirnum || secnum == thirnum {
        if firstnum == secnum {
            print("\(1000 + (firstnum * 100))")
        }
        else {
            print("\(1000 + (thirnum * 100))")
        }
    }
    else {
        if firstnum > secnum && firstnum > thirnum {
            print("\(firstnum * 100)")
        }
        else if secnum > firstnum && secnum > thirnum {
            print("\(secnum * 100)")
        }
        else {
            print("\(thirnum * 100)")
        }
    }
    
}

prize()
