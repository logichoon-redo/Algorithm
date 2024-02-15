//
//  main.swift
//  15723
//
//  Created by 이치훈 on 2/13/24.
//

let n = Int(String(readLine()!))!
var graph = [[Int]](repeating: [], count: 26)
_=(1...n).map { _ in
  let edge = readLine()!
  let firstValue = Int(UnicodeScalar(String(edge.first!))!.value) - 97
  let lastValue = Int(UnicodeScalar(String(edge.last!))!.value) - 97
  
  graph[firstValue].append(lastValue)
}
var findNode = 0
var isSatisfy = false
var visited = [Bool](repeating: false, count: 26)

func dfs(sn node: Int) {
  if visited[node] { return }
  visited[node] = true
  
  if node == findNode {
    isSatisfy = true
    return
  }
  
  for nextNode in graph[node] {
    dfs(sn: nextNode)
  }
}

let m = Int(String(readLine()!))!
_=(1...m).map { _ in
  isSatisfy = false
  visited = [Bool](repeating: false, count: 26)
  
  let edge = readLine()!
  let firstValue = Int(UnicodeScalar(String(edge.first!))!.value) - 97
  let lastValue = Int(UnicodeScalar(String(edge.last!))!.value) - 97
  
  findNode = lastValue
  dfs(sn: firstValue)
  isSatisfy ? print("T") : print("F")
}
