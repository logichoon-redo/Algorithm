//
//  main.swift
//  1764
//
//  Created by 이치훈 on 6/29/24.
//

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0], m = nm[1]
var nameTable = [String: Bool]()
var result = [String]()

_=(1...n).map { _ in
  let input = readLine()!
  nameTable[input] = true
}

_=(1...m).map { _ in
  let find = readLine()!
  if nameTable[find] == true {
    result.append(find)
  }
}

result.sort()

print(result.count)
_=result.map {
  print($0)
}
