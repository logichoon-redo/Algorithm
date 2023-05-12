//
//  main.swift
//  10828
//
//  Created by 이치훈 on 2023/05/12.
//
//스택

import Foundation

struct Stack {
    var data = [Int](repeating: 0, count: count)
    var top = -1
    
    func size() -> Int {
        return top + 1
    }

    func isEmpty() -> Int {
        if top == -1 {
            return 1
        }
        else {return 0}
    }
    
    func showTop() -> Int {
        if isEmpty() != 0 {
            return top
        }
        return data[top]
    }
    
    mutating func push(_ item: Int) {
        top += 1
        data[top] = item
    }
    
    mutating func pop() -> Int {
        if isEmpty() != 0 {
            return -1
        }
        let temp = data[top]
        top -= 1
        return temp
    }
}

let count = Int(readLine()!)!
var stack = Stack()
var commands = [String](repeating: "", count: count)
var command: String = ""

func readCommand() {
    for i in 0...count - 1 {
     commands[i] = readLine()!
        if commands[i].contains("push") {
            stack.push(Int(commands[i].split(separator: " ")[1])!)
        }
        else {
            let subs = commands[i]
            switch subs {
            case "pop":
                print(stack.pop())
            case "size":
                print(stack.size())
            case "empty":
                print(stack.isEmpty())
            case "top":
                print(stack.showTop())
            default:
                break
            }
        }
    }
}
readCommand()






