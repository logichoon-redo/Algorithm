//
//  main.swift
//  1920
//
//  Created by 이치훈 on 2023/05/18.
//

let firstNumLength = Int(String(readLine()!))!
var firstNums = readLine()!.split(separator: " ").map {
    Int(String($0))!
}
firstNums.sort()

let secondNumLength = Int(String(readLine()!))!
var secondNums = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

for i in 0..<secondNumLength {
  let result = binarySearch(firstNums, secondNums[i])
  print(result)
}

func binarySearch(_ firstNums: [Int], _ target: Int) -> Int {
  var start = 0
  var last = firstNums.count - 1
  
  while start <= last {
    var mid = (start + last) / 2
    
    if firstNums[mid] == target{
      return 1
    } else if firstNums[mid] < target {
      start = mid + 1
    }
    else if firstNums[mid] > target {
     last = mid - 1
    }
  }

  return 0
}
