//
//  main.swift
//  11723
//
//  Created by 이치훈 on 4/15/25.
//

import Foundation

class FileIO {
    @inline(__always) private var buffer: [UInt8] = Array(FileHandle.standardInput.readDataToEndOfFile()) + [0], byteIdx = 0
    
    @inline(__always) private func readByte() -> UInt8 {
        defer { byteIdx += 1 }
        return buffer.withUnsafeBufferPointer { $0[byteIdx] }
    }
    
    @inline(__always) func readInt() -> Int {
        var number = 0, byte = readByte(), isNegative = false
        while byte == 10 || byte == 32 { byte = readByte() }
        if byte == 45 { byte = readByte(); isNegative = true }
        while 48...57 ~= byte { number = number * 10 + Int(byte - 48); byte = readByte() }
        return number * (isNegative ? -1 : 1)
    }
    
    @inline(__always) func readStirngSum() -> Int {
        var byte = readByte()
        while byte == 10 || byte == 32 { byte = readByte() }
        var sum = Int(byte)
        while byte != 10 && byte != 32 && byte != 0 { byte = readByte(); sum += Int(byte) }
        return sum - Int(byte)
    }
    
    @inline(__always) private func write(_ output: String) {
        FileHandle.standardOutput.write(output.data(using: .utf8)!)
    }
}

let fileIO = FileIO()
let m = fileIO.readInt()
var bitMap = 0
var result = ""

for _ in 0..<m {
  switch fileIO.readStirngSum() {
  case 297:
    bitMap |= 1 << fileIO.readInt()
  case 654:
    bitMap &= ~(1 << fileIO.readInt())
  case 510:
    result += String(((bitMap & (1 << fileIO.readInt())) != 0) ? 1 : 0)
    result += "\n"
  case 642:
    bitMap ^= 1 << fileIO.readInt()
  case 313:
    bitMap = .max
  case 559:
    bitMap = 0
  default: break
  }
}

print(result)
