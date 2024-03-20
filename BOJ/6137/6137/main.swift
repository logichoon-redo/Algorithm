//
//  main.swift
//  6137
//
//  Created by 이치훈 on 3/20/24.
//

let n = Int(readLine()!)!
var s = [String]()
_=(0..<n).map { _ in
  s.append(readLine()!)
}
var t = [String]()
var frontMainPt = 0
var frontSubPt = 1
var rearMainPt = n-1
var rearSubPt = n-2

if 1 < n {
  while frontMainPt != rearMainPt {
    if s[frontMainPt] != s[rearMainPt] {
      if s[frontMainPt] < s[rearMainPt] {
        t.append(s[frontMainPt])
        frontMainPt += 1
        frontSubPt += 1
      } else {
        t.append(s[rearMainPt])
        rearMainPt -= 1
        rearSubPt -= 1
      }
    } else {
      
      var tempFrontSub = frontSubPt
      var tempRearSub = rearSubPt
      while s[tempFrontSub] == s[tempRearSub] {
        tempFrontSub += 1
        tempRearSub -= 1
        if tempFrontSub >= tempRearSub {
          tempFrontSub = frontSubPt
          tempRearSub = rearSubPt
          break
        }
      }
      
      if s[tempFrontSub] <= s[tempRearSub] {
        t.append(s[frontMainPt])
        frontMainPt += 1
        frontSubPt += 1
      } else {
        t.append(s[rearMainPt])
        rearMainPt -= 1
        rearSubPt -= 1
      }
      
    }
  }
  t.append(s[frontMainPt])
  
  var count = 0
  _=(0..<n).map { i in
    print(t[i], terminator: "")
    count += 1
    
    if i > 0 && count % 80 == 0 {
      print()
    }
  }
} else {
  print(s[0])
}
