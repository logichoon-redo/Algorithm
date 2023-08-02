//
//  main.swift
//  24416
//
//  Created by 이치훈 on 2023/08/02.
//

var cache = [0, 1]
for i in 2...40 {
  cache.append(cache[i - 2] + cache[i - 1])
}

let n = Int(String(readLine()!))!
print(cache[n], n - 2)
