//
//  main.swift
//  3003
//
//  Created by 이치훈 on 1/6/24.
//

let piece = readLine()!.split(separator: " ").map {
  Int($0)!
}
let originPiece = [1, 1, 2, 2, 2, 8]
var neededPiece = [Int](repeating: 0, count: 6)

for i in 0..<piece.count {
  neededPiece[i] = originPiece[i] - piece[i]
}

_ = neededPiece.map {
  print($0, terminator: " ")
}
