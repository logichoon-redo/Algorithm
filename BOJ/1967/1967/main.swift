//
//  main.swift
//  1967
//
//  Created by 이치훈 on 2/8/24.
//

let n = Int(String(readLine()!))!
var graph = [[(no: Int, w: Int)]](repeating: [], count: n+1)
_=(0..<n-1).map { _ in
  let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
  let present = edge[0], son = edge[1], weight = edge[2]
  
  graph[present].append((son, weight))
  graph[son].append((present, weight))
}
var weightSums = [Int](repeating: 0, count: n+1)
var visited = [Bool](repeating: false, count: n+1)

func dfs(node: Int, weight: Int) {
  if visited[node] { return }
  visited[node] = true
  if weightSums[node] == 0 {
    weightSums[node] = weight
  } else { return }
  
  for nextNode in graph[node] {
    dfs(node: nextNode.no, weight: weight + nextNode.w)
  }
}

dfs(node: 1, weight: 0)
let max = weightSums.max()!
var startNode = 0

_=(1...n).map { i in
  if weightSums[i] == max {
    startNode = i
    return
  }
}

weightSums = [Int](repeating: 0, count: n+1)
visited = [Bool](repeating: false, count: n+1)
dfs(node: startNode, weight: 0)
print(weightSums.max()!)
