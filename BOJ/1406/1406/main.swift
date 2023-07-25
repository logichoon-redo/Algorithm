//
//  main.swift
//  1406
//
//  Created by 이치훈 on 2023/07/25.
//

//var stackLeft = Array(readLine()!)
//var stackRight = [Character]()
//let m = Int(String(readLine()!))!
//
//for _ in 1...m {
//  let command = readLine()!.split(separator: " ").map {
//    Character(String($0))
//  }
//
//  switch command[0] {
//  case "L":
//    if !stackLeft.isEmpty {
//      stackRight.append(stackLeft.removeLast())
//    }
//  case "D":
//    if !stackRight.isEmpty {
//      stackLeft.append(stackRight.removeLast())
//    }
//  case "B":
//    if !stackLeft.isEmpty {
//      stackLeft.removeLast()
//    }
//  case "P":
//    stackLeft.append(command[1])
//  default:
//    break
//  }
//}
//
//print(String(stackLeft + stackRight.reversed()))

if let str = readLine() {
    let n = readLine().map{Int($0)!}!

    var stackL = str
    var stackR = ""
    
    for _ in 0..<n {
        var order = readLine()
        switch order {
        case "L":
            if stackL != "" {
                let c = stackL.removeLast()
                stackR.append(c)
            }
        case "D":
            if stackR != "" {
                let c = stackR.removeLast()
                stackL.append(c)
            }
        case "B":
            if stackL != "" {
                stackL.removeLast()
            }
        default:
            let p = order!.removeLast()
            stackL.append(p)
        }
    }
    
    print(stackL + stackR.reversed())
    
}
