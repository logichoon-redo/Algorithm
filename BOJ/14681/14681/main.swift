//
//  14681.swift
//  Swift_Algorithm
//
//  Created by 이치훈 on 2023/05/08.
//

import Foundation

var pointX = readLine().map {
    Int(String($0))!
}

var pointY = readLine().map {
    Int($0)!
}

func quadrant(){
    if pointX! > 0 { //양수
        if pointY! > 0 {
            print(1)
        }
        else if pointY! < 0 {
            print(4)
        }
    }
    else if pointX! < 0 { //음수
        if pointY! > 0 {
            print(2)
        }
        else if pointY! < 0 {
            print(3)
        }
    }

}

quadrant()
