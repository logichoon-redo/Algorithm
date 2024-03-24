//
//  main.swift
//  1083
//
//  Created by 이치훈 on 3/23/24.
//

let n = Int(readLine()!)!
var nums = readLine()!.split(separator: " ").map { Int(String($0))! }
var s = Int(readLine()!)!
var startIndex = 0

while startIndex < n && 0 < s {
  let startValue = nums[startIndex]
  var maxValue = nums[startIndex]
  var maxIndex = startIndex
  
  _=(startIndex..<min(n, s+startIndex+1)).map { i in
    if nums[i] > maxValue && nums[i] > startValue {
      maxValue = nums[i]
      maxIndex = i
    }
  }
  
  let cost = max(maxIndex - startIndex, 0)
  
  if cost <= s {
    if startIndex != maxIndex {
      nums.remove(at: maxIndex)
      nums.insert(maxValue, at: startIndex)
      s -= cost
    }
  }
  
  startIndex += 1
}

_=nums.map { print($0, terminator: " ") }
