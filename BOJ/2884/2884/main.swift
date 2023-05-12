//
//  2884.swift
//  Swift_Algorithm
//
//  Created by 이치훈 on 2023/05/09.
//

import Foundation

//let MAX_TIME = 1439
var time = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

var hours = time.first!
var min = time[1]

func timeCulculer() {
    
    if min < 45 {
        if hours == 0 {
            hours = 23
            min = (min + 60) - 45
        }
        else {
            hours = hours - 1
            min = (min + 60) - 45
        }
    }
    else {
        min = min - 45
    }
    
    print("\(hours) \(min)")
}

timeCulculer()

//MARK: - 보류 코드

//let timeSum = hours + min
//
//func culcTime() -> Int {
//    if timeSum < 45 {
//        return MAX_TIME + timeSum - 45
//    } else {
//        return timeSum - 45
//    }
//}
//
//func timeFormetter() {
//    let time = culcTime()
//
//    let resultHours = time / 60
//    let resultMin = time % 60
//
//    print("\(resultHours) \(resultMin)")
//}

//timeFormetter()
