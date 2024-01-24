//
//  main.swift
//  1697
//
//  Created by 이치훈 on 1/24/24.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], k = input[1]
var visited = [Bool](repeating: false, count: 100_001)
visited[n] = true

func bfs() {
  var queue = [(n, 0)]
  var index = 0
  
  while index < queue.count {
    let pop = queue[index]
    let place = pop.0, depth = pop.1
    
    if place == k {
      print(depth)
      break
    }
    
    for i in 0..<3 {
      var nextPlace = 0
      switch i {
      case 0: nextPlace = place + 1
      case 1: nextPlace = place - 1
      case 2: nextPlace = place * 2
      default: break
      }
      
      if 0 <= nextPlace && nextPlace < 100_001 && !visited[nextPlace] {
        queue.append((nextPlace, depth + 1))
        visited[nextPlace] = true
      }
    }
    
    index += 1
  }
  
}

bfs()
