//
//  main.swift
//  1167
//
//  Created by 이치훈 on 2/9/24.
//

let v = Int(String(readLine()!))!
var graph = [[(no: Int, w: Int)]](repeating: [], count: v+1)
_=(0..<v).map { _ in
  let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
  let present = edge[0]
  var sonArray = [Int](), weightArray = [Int]()
  _=(1..<edge.count-1).map { i in
    if i % 2 == 0 {
      weightArray.append(edge[i])
    } else {
      sonArray.append(edge[i])
    }
  }
  
  _=(0..<sonArray.count).map { i in
    graph[present].append((sonArray[i], weightArray[i]))
  }
}
var visited = [Bool](repeating: false, count: v+1)
var weightSums = [Int](repeating: 0, count: v+1)

func dfs(node: Int, depth: Int) {
  
  if visited[node] { return }
  visited[node] = true
  
  if weightSums[node] == 0 {
    weightSums[node] = depth
  } else { return }
  
  for nextNode in graph[node] {
    dfs(node: nextNode.no, depth: depth + nextNode.w)
  }
}

dfs(node: 1, depth: 0)

let max = weightSums.max()!
var startNode = 0

_=(1..<weightSums.count).map { i in
  if weightSums[i] == max {
    startNode = i
    return
  }
}

visited = [Bool](repeating: false, count: v+1)
weightSums = [Int](repeating: 0, count: v+1)
dfs(node: startNode, depth: 0)

print(weightSums.max()!)
