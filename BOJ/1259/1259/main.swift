//
//  main.swift
//  1259
//
//  Created by 이치훈 on 2023/06/30.
//

while true {
  let num = String(readLine()!)
  if num == "0" {
    break
  }
  
  if isPalin(num) {
    print("yes")
  }else{
    print("no")
  }
}

func isPalin(_ num: String) -> Bool {
  let numArr = Array(num)
  for i in 0...(numArr.count/2) {
    if numArr[i] == numArr[numArr.count - 1 - i] {
    }else{
      return false
    }
  }
  
  return true
}
