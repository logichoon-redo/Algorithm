//
//  main.swift
//  1991
//
//  Created by 이치훈 on 1/22/24.
//

let n = Int(String(readLine()!))!
var tree = [String: [String]]()
var frontTurn = ""
var midTurn = ""
var rearTurn = ""

for _ in 0..<n {
  let nodes = readLine()!.split(separator: " ").map { String($0) }
  tree[nodes[0]] = [nodes[1]]
  tree[nodes[0]]!.append(nodes[2])
}

func recur(alpha: String) {
  if tree[alpha]![0] == "." && tree[alpha]![1] == "." {
    frontTurn.append(alpha)
    midTurn.append(alpha)
    rearTurn.append(alpha)
    return
  }
  
  frontTurn.append(alpha)
  if tree[alpha]![0] != "." {
    recur(alpha: tree[alpha]![0])
  }
  midTurn.append(alpha)
  if tree[alpha]![1] != "." {
    recur(alpha: tree[alpha]![1])
  }
  rearTurn.append(alpha)
}

recur(alpha: "A")

print(frontTurn)
print(midTurn)
print(rearTurn)
