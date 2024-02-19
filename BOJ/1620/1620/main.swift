//
//  main.swift
//  1620
//
//  Created by 이치훈 on 2/19/24.
//

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0], m = nm[1]
var monsterDictionary = [AnyHashable : AnyHashable]()

_=(1...n).map { i in
  let monsterString = readLine()!
  
  monsterDictionary[i] = monsterString
  monsterDictionary[monsterString] = i
}

_=(1...m).map { _ in
  let question = readLine()!
  Int(question) != nil ? print(monsterDictionary[Int(question)]!) : print(monsterDictionary[question]!)
}
