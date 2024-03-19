//
//  main.swift
//  19940
//
//  Created by 이치훈 on 3/18/24.
//

typealias Info = (time: Int, ADDH: Int, ADDT: Int, MINT: Int, ADDO: Int, MINO: Int)

func bfs(usedOper: inout [Info]) {
  var queue: [Info] = [(0, 0, 0, 0, 0, 0)]
  var index = 0
  var visited = [Bool](repeating: false, count: 61)
  
  while index < queue.count {
    let pop = queue[index]
    let time = pop.time
    let ADDH = pop.ADDH, ADDT = pop.ADDT, MINT = pop.MINT, ADDO = pop.ADDO, MINO = pop.MINO
    index += 1
    
    if (0...60) ~= time && !visited[time] {
      visited[time] = true
      usedOper[time] = pop
      queue.append((time - 1, ADDH, ADDT, MINT, ADDO, MINO + 1))
      queue.append((time + 1, ADDH, ADDT, MINT, ADDO + 1, MINO))
      queue.append((time - 10, ADDH, ADDT, MINT + 1, ADDO, MINO))
      queue.append((time + 10, ADDH, ADDT + 1, MINT, ADDO, MINO))
      queue.append((time + 60, ADDH + 1, ADDT, MINT, ADDO, MINO))
    }
  }
}

var usedOperCount = [Info](repeating: (0, 0, 0, 0, 0, 0), count: 61)
bfs(usedOper: &usedOperCount)

let t = Int(readLine()!)!
_=(0..<t).map { _ in
  let n = Int(readLine()!)!
  let ADDHCount = n / 60
  let time = n % 60
  
  print(usedOperCount[time].ADDH + ADDHCount, usedOperCount[time].ADDT, usedOperCount[time].MINT, usedOperCount[time].ADDO, usedOperCount[time].MINO, separator: " ")
}
