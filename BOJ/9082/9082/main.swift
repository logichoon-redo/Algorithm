//
//  main.swift
//  9082
//
//  Created by 이치훈 on 3/26/24.
//

let t = Int(readLine()!)!
_=(1...t).map { _ in
  let n = Int(readLine()!)!
  var bombCount = Array(readLine()!).map { Int(String($0))! }
  let hiddenBlock = Array(readLine()!).map { String($0) }
  
  if n > 2 {
    var flagCount = 0
   
    _=(0..<n).map { i in
      if i == 0 {
        if bombCount[i] != 0 && bombCount[i+1] != 0 {
          bombCount[i] -= 1
          bombCount[i+1] -= 1
          flagCount += 1
        }
      } else if i == n-1 {
        if bombCount[n-1] != 0 && bombCount[n-2] != 0 {
          bombCount[i] -= 1
          bombCount[i-1] -= 1
          flagCount += 1
        }
      } else {
        if bombCount[i-1] != 0 && bombCount[i] != 0 && bombCount[i+1] != 0 {
          bombCount[i-1] -= 1
          bombCount[i] -= 1
          bombCount[i+1] -= 1
          flagCount += 1
        }
      }
    }
    
    print(flagCount)
  } else {
    print(bombCount[0])
  }
}
