//
//  main.swift
//  2138
//
//  Created by 이치훈 on 3/12/24.
//

let n = Int(readLine()!)!
var light = Array(readLine()!).map { String($0) == "0" ? true : false }
let targetLight = Array(readLine()!).map { String($0) == "0" ? true : false }
var count = 0

func tappLightToggle(i: Int) {
  light[i-1].toggle()
  light[i].toggle()
  light[i+1].toggle()
}

func solution() -> Int {
  _=(1..<n-1).map { i in
    if targetLight[i-1] != light[i-1] {
      tappLightToggle(i: i)
      count += 1
    }
  }
  
  if light[n-2...n-1] != targetLight[n-2...n-1] {
    light[n-2].toggle()
    light[n-1].toggle()
    count += 1
  }
  
  return targetLight == light ? count : -1
}

  let temp = light
  // 0번째를 누르는 경우
  light[0].toggle()
  light[1].toggle()
  count += 1
  let tappedFirstIndex = solution()
  
  // 0번째를 누르지 않는 경우
  light = temp
  count = 0
  let unTappedFirstIdenx = solution()
  
  print(tappedFirstIndex == -1 || unTappedFirstIdenx == -1 ? max(tappedFirstIndex, unTappedFirstIdenx) : min(tappedFirstIndex, unTappedFirstIdenx))
