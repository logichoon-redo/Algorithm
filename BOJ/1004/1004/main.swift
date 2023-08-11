//
//  main.swift
//  1004
//
//  Created by 이치훈 on 2023/08/11.
//

import Foundation

let t = Int(String(readLine()!))!

for _ in 1...t {
  let xy = readLine()!.split(separator: " ").map {
    Int(String($0))!
  }
  let start = (x: xy[0], y: xy[1])
  let end = (x: xy[2], y: xy[3])
  let planetCount = Int(String(readLine()!))!
  var crossCount = 0
  
  for _ in 1...planetCount {
    let planet = readLine()!.split(separator: " ").map{
      Int(String($0))!
    }
    let px = planet[0]
    let py = planet[1]
    let r = planet[2]
    
    if isInPlanet(start.x, start.y, px, py, r) && !isInPlanet(end.x, end.y, px, py, r) {
      crossCount += 1
    }
    
    if !isInPlanet(start.x, start.y, px, py, r) && isInPlanet(end.x, end.y, px, py, r) {
      crossCount += 1
    }
  }
  print(crossCount)
}

func isInPlanet(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int, _ r: Int) -> Bool {
  let distance = pow(Double((x1 - x2)), 2) + pow(Double((y1 - y2)), 2)
  if distance < pow(Double(r), 2) {
    return true
  } else {
    return false
  }
}
