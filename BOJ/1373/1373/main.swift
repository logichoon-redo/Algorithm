//
//  main.swift
//  1373
//
//  Created by 이치훈 on 2023/08/02.
//

var input = readLine()!.reversed().map {
  String($0)
}
if input.count % 3 > 0 {
  input.append(contentsOf: Array(repeating: "0", count: 3 - (input.count % 3)))
}
input = input.reversed()

var octString = ""
for i in stride(from: 0, to: input.count - 1, by: 3) {
  let octNumber = (Int(input[i])! * 4) + (Int(input[i + 1])! * 2) + (Int(input[i + 2])!)
  octString += String(octNumber)
}

print(octString)
