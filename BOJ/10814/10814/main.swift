//
//  main.swift
//  10814
//
//  Created by 이치훈 on 2023/07/13.
//

let length = Int(String(readLine()!))!
var users = [(Int, String)]()

for _ in 1...length {
  let user = readLine()!.split(separator: " ").map {String($0)}
  users.append((age: Int(user[0])!, name: user[1]))
}
users.sort { (person1, person2) in
  person1.0 < person2.0
}

_=users.map {
  print("\($0.0) \($0.1)")
}
