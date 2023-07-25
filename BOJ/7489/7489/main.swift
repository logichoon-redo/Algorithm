//
//  main.swift
//  7489
//
//  Created by 이치훈 on 2023/07/26.
//

let t = Int(String(readLine()!))!

for _ in 1...t {
  let fact = setFact(Int(String(readLine()!))!)
  print(fact)
}

func setFact(_ num: Int) -> Int {
  if num == 1 {
    return 1
  }
  
  var resultFact = 1
  for i in 1...num {
    resultFact *= i
    
    resultFact %= 100000
    while resultFact % 10 == 0 {
      resultFact /= 10
    }
  }
  return resultFact % 10
}
