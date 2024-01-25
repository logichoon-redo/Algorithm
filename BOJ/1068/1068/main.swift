//
//  main.swift
//  1068
//
//  Created by 이치훈 on 1/25/24.
//

let n = Int(String(readLine()!))!
var tree = [[Int]](repeating: [], count: n)
let nodes = readLine()!.split(separator: " ").map { Int(String($0))! }
var removeNode = Int(String(readLine()!))!
var root = 0
var leafNodeCount = 0

for i in 0..<n {
  if nodes[i] == -1 { 
    root = i
    continue
  }
  if i == removeNode || nodes[i] == removeNode { continue }
  
  tree[nodes[i]].append(i)
}

func dfs(n node: Int) {
  if tree[node].isEmpty {
    leafNodeCount += 1
    return
  }
  
  for i in tree[node] {
    dfs(n: i)
  }
}

if removeNode != root {
  dfs(n: root)
  print(leafNodeCount)
} else {
  print(0)
}
