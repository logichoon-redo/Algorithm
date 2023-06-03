//
//  main.swift
//  9012
//
//  Created by 이치훈 on 2023/06/03.
//

import Foundation

struct Stack {
    var top = 0
    var paren = [String]()
    
    mutating func push(item: String) {
        paren.append(item)
        top += 1
    }
    
    mutating func pop() -> Bool {
        if paren.isEmpty {
            return false
        }
        
        paren.removeLast()
        top -= 1
        return true
    }
}

let length = Int(String(readLine()!))!
var stack = Stack()

func checkCommand() {
    for _ in 1...length {
        let command = readLine()!
        stack.paren = [String]()
        stack.top = 0
        
        if isVPS(command: command) == true {
            print("YES")
        } else {
            print("NO")
        }
    }
}
    
func isVPS(command: String) -> Bool {
    let commandArray = Array(command)
    for i in 0..<commandArray.count {
        if commandArray[i] == "(" {
            stack.push(item: String(commandArray[i]))
        } else {
            if stack.pop() == false {
                return false
            }
        }
    }
    
    if stack.top == 0 {
        return true
    }
    return false
}

checkCommand()
