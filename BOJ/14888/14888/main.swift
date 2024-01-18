//
//  main.swift
//  14888
//
//  Created by 이치훈 on 1/18/24.
//

let n = Int(String(readLine()!))!
let nums = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
var operation = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
var maxValue = Int.min
var minValue = Int.max

func recur(num: Int, d depth: Int) {
  if depth == n {
    maxValue = max(maxValue, num)
    minValue = min(minValue, num)
    return
  }
  
  for i in 0..<4 {
    if operation[i] < 1 { continue }
    
    operation[i] -= 1
    
    switch i {
    case 0: recur(num: num + nums[depth], d: depth + 1)
    case 1: recur(num: num - nums[depth], d: depth + 1)
    case 2: recur(num: num * nums[depth], d: depth + 1)
    case 3: recur(num: num / nums[depth], d: depth + 1)
    default:
      break
    }
    
    operation[i] += 1
  }
}


recur(num: nums[0], d: 1)

print(maxValue)
print(minValue)
