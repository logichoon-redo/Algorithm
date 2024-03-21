//
//  main.swift
//  1911
//
//  Created by 이치훈 on 3/21/24.
//

let nl = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nl[0], l = nl[1]
var list = [(Int, Int)]()
_=(0..<n).map { _ in
  let pool = readLine()!.split(separator: " ").map { Int(String($0))! }
  list.append((pool[0], pool[1] - 1))
}
list.sort {
  $0.0 < $1.0
}

var count = 0
var length = -1

_=list.map { start, end in
  if length < start {
    let poolSize = end - start + 1
    length = start + l * (poolSize / l) + (poolSize % l != 0 ? l : 0) - 1
    count += poolSize / l + (poolSize % l != 0 ? 1 : 0)
  } else if end > length {
    let poolSize = end - length
    length = length + l * (poolSize / l) + (poolSize % l != 0 ? l : 0)
    count += poolSize / l + (poolSize % l != 0 ? 1 : 0)
  }
}

print(count)
