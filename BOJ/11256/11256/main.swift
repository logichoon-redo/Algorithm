//
//  main.swift
//  11256
//
//  Created by 이치훈 on 3/17/24.
//

let t = Int(readLine()!)!
_=(1...t).map { _ in
  let jn = readLine()!.split(separator: " ").map { Int(String($0))! }
  var j = jn[0]
  let n = jn[1]
  var boxSize = [Int]()
  var boxCount = 0
  _=(0..<n).map { _ in
    let box = readLine()!.split(separator: " ").map { Int(String($0))! }
    boxSize.append(box[0] * box[1])
  }
  boxSize.sort(by: >)
  
  for i in 0..<n {
    j -= boxSize[i]
    boxCount += 1
    if j <= 0 {
      print(boxCount)
      break
    }
  }
}
