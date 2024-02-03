//
//  main.swift
//  13913
//
//  Created by 이치훈 on 2/3/24.
//

let nk = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nk[0], k = nk[1]
var visited = [Int](repeating: -1, count: 100_001)
var route = [Int]()

func bfs() {
  var queue = [(n, 0)]
  var index = 0
  visited[n] = 0
  
  while index < queue.count {
    let pop = queue[index]
    index += 1
    let place = pop.0, depth = pop.1
    
    if place == k {
      print(depth)
      break
    }
    
    for i in 0..<3 {
      var nextPlace = 0
      switch i {
      case 0: nextPlace = place - 1
      case 1: nextPlace = place + 1
      case 2: nextPlace = place * 2
      default: break
      }
      
      if 0...100_000 ~= nextPlace && visited[nextPlace] == -1 {
        visited[nextPlace] = place
        queue.append((nextPlace, depth + 1))
      }
    }
  }
}

bfs()

var i = k

while i != n {
  route.append(i)
  i = visited[i]
}

route.append(n)

print(route.reversed().map { String($0) }.joined(separator: " "))
