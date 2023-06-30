//
//  main.swift
//  18258
//
//  Created by 이치훈 on 2023/06/30.
//
import Foundation

final class FileIO {
    private var buffer:[UInt8]
    private var index: Int
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
        index = 0
    }
    
    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        
        return buffer.withUnsafeBufferPointer { $0[index] }
    }
    
    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        
        return sum * (isPositive ? 1:-1)
    }
    
    @inline(__always) func readString() -> Int {
        var str = 0
        var now = read()
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        
        while now != 10
                && now != 32 && now != 0 {
            str += Int(now)
            now = read()
        }
        
        return str
    }
}

struct Queue {
  var queue: [Int]
  var front = 0
  var rear = 0
  var size = 0
  
  init(length: Int) {
    queue = Array(repeating: 0, count: length)
  }
  
  mutating func push(_ num: Int) {
    queue[rear] = num
    rear += 1
    size += 1
  }
  
  mutating func pop() -> Int {
    if isEmpty() == 1 {
      return -1
    }
    
    let temp = queue[front]
    front += 1
    size -= 1
    return temp
  }
  
  func getFrontValue() -> Int {
    if isEmpty() == 1 {
      return -1
    }
    return queue[front]
  }
  
  func getRearValue() -> Int {
    if isEmpty() == 1 {
      return -1
    }
    
    if rear <= 0 {
      return queue[rear + queue.count]
    }else{
      return queue[rear - 1]
    }
  }
  
  func getSize() -> Int {
    return self.size
  }
  
  func isEmpty() -> Int { // 비어있으면 true
    if size == 0 {
      return 1
    }
    
    return 0
  }
  
}

let file = FileIO()
let length = file.readInt()
var queue = Queue(length: length)
var result = ""

for _ in 1...length {
  let command = file.readString()
  
  switch command {
  case 448:
    queue.push(file.readInt())
  case 335:
    result += "\(queue.pop())\n"
  case 443:
    result += "\(queue.getSize())\n"
  case 559:
    result += "\(queue.isEmpty())\n"
  case 553:
    result += "\(queue.getFrontValue())\n"
  case 401:
    result += "\(queue.getRearValue())\n"
  default:
    continue
  }
}

print(result)
