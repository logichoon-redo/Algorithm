//
//  main.swift
//  1406
//
//  Created by 이치훈 on 2023/07/25.
//

if let str = readLine() {
  let n = readLine().map{Int($0)!}!
  
  var stackLeft = str
  var stackRight = ""
  
  for _ in 0..<n {
    var order = readLine()
    switch order {
    case "L":
      if stackLeft != "" {
        let c = stackLeft.removeLast()
        stackRight.append(c)
      }
    case "D":
      if stackRight != "" {
        let c = stackRight.removeLast()
        stackLeft.append(c)
      }
    case "B":
      if stackLeft != "" {
        stackLeft.removeLast()
      }
    default:
      let p = order!.removeLast()
      stackLeft.append(p)
    }
  }
  
  print(stackLeft + stackRight.reversed())
  
}
