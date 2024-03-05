//
//  main.swift
//  13164
//
//  Created by 이치훈 on 3/5/24.
//

let nk = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nk[0], k = nk[1]
let heights = readLine()!.split(separator: " ").map { Int(String($0))! }
var heightDieffrences = [Int]()
var answer = 0

_=(0..<n-1).map { i in
  heightDieffrences.append(heights[i+1] - heights[i])
}
heightDieffrences.sort()

_=(0..<n-k).map { i in
  answer += heightDieffrences[i]
}

print(answer)
