//
//  main.swift
//  13549
//
//  Created by 이치훈 on 2/2/24.
//

let nk = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nk[0], k = nk[1]

func bfs() {
  var queue = [(n, 0)]
  var index = 0
  var visited = [Bool](repeating: false, count: 100_001)
  visited[n] = true
  
  while index < queue.count {
    let pop = queue[index]
    let place = pop.0, depth = pop.1
    index += 1
    
    if place == k {
      print(depth)
      break
    }
    
  OPERCASE: for i in 0..<3 {
    var nextPlace = 0
    var nextDepth = depth
    
    switch i {
    case 0: nextPlace = place * 2;
      if nextPlace >= 100_001 || visited[nextPlace]
      { continue OPERCASE }
    case 1: nextPlace = place - 1; nextDepth += 1
      if nextPlace < 0 || visited[nextPlace] 
      { continue OPERCASE }
    case 2: nextPlace = place + 1; nextDepth += 1
        if nextPlace >= 100_001 || visited[nextPlace]
        { continue OPERCASE }
    default: break
    }
    
    visited[nextPlace] = true
    queue.append((nextPlace, nextDepth))
  }
  }
}

bfs()

//print("place: \(place), depth: \(depth)")
