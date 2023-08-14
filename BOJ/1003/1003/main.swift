//
//  main.swift
//  1003
//
//  Created by 이치훈 on 2023/08/14.
//

let t = Int(String(readLine()!))!

for _ in 1...t {
  let n = Int(String(readLine()!))!
  var zero = [Int]()
  var one = [Int]()
  
  if n == 0 {
    zero.append(1)
    one.append(0)
  } else if n == 1 {
    zero.append(0)
    one.append(1)
  } else {
    zero.append(1)
    zero.append(0)
    one.append(0)
    one.append(1)
    
    for i in 2...n {
      zero.append(zero[i - 1] + zero[i - 2])
      one.append(one[i - 1] + one[i - 2])
    }
  }
  
  print("\(zero.last!) \(one.last!)")
}
