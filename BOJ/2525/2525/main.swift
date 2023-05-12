//
//  2525.swift
//  Swift_Algorithm
//
//  Created by 이치훈 on 2023/05/10.
//

import Foundation

var time = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

var hours = time[0]
var min = time[1]

var howLong = Int(readLine()!)!

func calcTime() {
    
    hours += howLong / 60
    min += howLong % 60

    if min >= 60 {
        hours += 1
        min -= 60
    }
    if hours >= 24 {
        hours -= 24
    }
    
    print("\(hours) \(min)")
}

calcTime()
