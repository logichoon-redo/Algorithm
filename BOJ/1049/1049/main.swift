//
//  main.swift
//  1049
//
//  Created by 이치훈 on 2/29/24.
//

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0], m = nm[1]
var minPackage = Int.max
var minPiece = Int.max

_=(0..<m).map { _ in
  let brand = readLine()!.split(separator: " ").map { Int(String($0))! }
  
  minPackage = min(minPackage, brand[0])
  minPiece = min(minPiece, brand[1])
}

if minPackage > minPiece * 6 {
  print(minPiece * n)
} else {
  let pieceCount = n % 6
  let packageCount = n / 6
  var total = minPackage * packageCount
  
  if minPiece * pieceCount > minPackage {
    total += minPackage
  } else {
    total += minPiece * pieceCount
  }
  
  print(total)
}
