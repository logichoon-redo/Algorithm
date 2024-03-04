//
//  main.swift
//  1092
//
//  Created by 이치훈 on 3/4/24.
//

import Foundation

let craneCount = Int(readLine()!)!
var cranes = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
let cargoCount = Int(readLine()!)!
var cargos = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var minCount = 0

if cargos.last! > cranes.last! {
  print(-1)
  exit(0)
}

while !cargos.isEmpty {
  
  for i in stride(from: cranes.endIndex-1, to: -1, by: -1) {
    for j in stride(from: cargos.endIndex-1, to: -1, by: -1) {
      if cargos[j] <= cranes[i] {
        cargos.remove(at: j)
        break
      }
    }
  }
  
  minCount += 1
}

print(minCount)
