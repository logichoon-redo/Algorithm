//
//  main.swift
//  10773
//
//  Created by 이치훈 on 2023/05/24.
//

struct Stack {
    var top = -1
    var book = [Int?]()
    
    mutating func pop() {
        if top == -1 {
            return
        }
        
        //book[top] = nil
        book.remove(at: top)
        top -= 1
    }
    
    mutating func push(item: Int) {
        top += 1
        book.append(item)
    }
    
}

let length = Int(String(readLine()!))!
var stack = Stack()
var result = 0

for _ in 1...length {
    let command = Int(String(readLine()!))!
    
    if command != 0 {
        stack.push(item: command)
    } else {
        stack.pop()
    }
}

for i in 0..<stack.book.count {
    if let item = stack.book[i], item != nil {
        result += item
    }
    
}

print(result)
