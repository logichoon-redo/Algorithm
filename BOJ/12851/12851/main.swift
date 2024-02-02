//
//  main.swift
//  12851
//
//  Created by 이치훈 on 2/2/24.
//

let nk = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nk[0], k = nk[1]
var answer = [Int](repeating: Int.max, count: 100_001)
var caseCount = 0

func bfs() {
  var queue = [(n, 0)]
  var index = 0
  answer[n] = 0
  
  while index < queue.count {
    let pop = queue[index]
    index += 1
    let place = pop.0, depth = pop.1
    
    if depth > answer[k] { break }
    
    if place == k {
      answer[k] = depth
      caseCount += 1
    }
    
    OPERCASE: for i in 0..<3 {
      var nextPlace = 0
      switch i {
      case 0: nextPlace = place * 2
        if nextPlace >= 100_001 { continue OPERCASE }
      case 1: nextPlace = place - 1
        if nextPlace < 0 { continue OPERCASE }
      case 2: nextPlace = place + 1
        if nextPlace >= 100_001 { continue OPERCASE }
      default: break
      }
      
      if depth + 1 <= answer[nextPlace] {
        answer[nextPlace] = depth + 1
        queue.append((nextPlace, depth + 1))
      }
    }
  }
}

bfs()

print(answer[k])
print(caseCount)
