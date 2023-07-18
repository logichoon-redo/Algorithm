//
//  main.swift
//  1158
//
//  Created by 이치훈 on 2023/07/18.
//

let nk = readLine()!.split(separator: " ").map { Int(String($0))! }
var n = nk[0]
var k = nk[1]
var queue = Array(1...n)
var result = [Int]()
var count = k

while !queue.isEmpty {
  if count <= queue.count {
    result.append(queue.remove(at: count - 1))
    count += (k - 1)
  } else {
    count -= queue.count
  }
}

print("<", terminator: "")
for i in 0..<result.count - 1 {
  print("\(result[i])", terminator: ", ")
}
print(result.last!, terminator: "")
print(">")
