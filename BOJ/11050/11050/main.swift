//
//  main.swift
//  11050
//
//  Created by 이치훈 on 2023/08/19.
//

let nk = readLine()!.split(separator: " ").map {
  Int(String($0))!
}
let n = nk[0]
let k = nk[1]

func binomial(n: Int, k: Int) -> Int {
  if k == 0 || n == k {
    return 1
  }
  
  return binomial(n: n - 1, k: k) + binomial(n: n - 1, k: k - 1)
}
print(binomial(n: n, k: k))
