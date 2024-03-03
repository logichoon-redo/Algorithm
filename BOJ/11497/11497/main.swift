//
//  main.swift
//  11497
//
//  Created by 이치훈 on 3/4/24.
//

let t = Int(readLine()!)!

_=(1...t).map { _ in
  let _ = Int(readLine()!)!
  let logs = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
  var deployLogs = [Int]()
  var maxDifficulty = Int.min
  
  _=stride(from: 0, to: logs.count, by: 2).map { i in
    deployLogs.append(logs[i])
  }
  _=(logs.count % 2 == 0 ?
     stride(from: logs.count-1, to: 0, by: -2) : stride(from: logs.count-2, to: 0, by: -2)).map { i in
    deployLogs.append(logs[i])
  }
  
  _=(0..<deployLogs.count).map { i in
    if i < deployLogs.count-1 {
      maxDifficulty = max(maxDifficulty, abs(deployLogs[i] - deployLogs[i + 1]))
    } else {
      maxDifficulty = max(maxDifficulty, abs(deployLogs[i] - deployLogs[0]))
    }
  }
  
  print(maxDifficulty)
}
