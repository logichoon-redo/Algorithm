//
//  main.swift
//  1946
//
//  Created by 이치훈 on 2/27/24.
//

import Foundation

final class FileIO {
  private let buffer:[UInt8]
  private var index: Int = 0
  init(fileHandle: FileHandle = FileHandle.standardInput) {
    buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
  }
  @inline(__always) private func read() -> UInt8 {
    defer { index += 1 }
    return buffer[index]
  }
  @inline(__always) func readInt() -> Int {
    var sum = 0
    var now = read()
    var isPositive = true
    while now == 10
            || now == 32 { now = read() } // 공백과 줄바꿈 무시
    if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
    while now >= 48, now <= 57 {
      sum = sum * 10 + Int(now-48)
      now = read()
    }
    return sum * (isPositive ? 1:-1)
  }
  @inline(__always) func readString() -> String {
    var now = read()
    while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
    let beginIndex = index-1
    while now != 10,
          now != 32,
          now != 0 { now = read() }
    return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
  }
  @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
    var now = read()
    while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
    let beginIndex = index-1
    while now != 10,
          now != 32,
          now != 0 { now = read() }
    return Array(buffer[beginIndex..<(index-1)])
  }
}

let fileIO = FileIO()
let testCase = fileIO.readInt()

_=(1...testCase).map { _ in
  let n = fileIO.readInt()
  var peoples = [[Int]]()
  _=(0..<n).map { _ in
    peoples.append([fileIO.readInt(), fileIO.readInt()])
  }
  var result = 0
  
  peoples.sort { (a, b) -> Bool in
    a[0] < b[0]
  }
  var minMeet = peoples[0][1]
  
  for i in 0..<n {
    if i == 0 {
      result += 1
    } else if peoples[i][1] < minMeet {
      result += 1
      minMeet = peoples[i][1]
    }
  }
  
  print(result)
}
