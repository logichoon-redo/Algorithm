//
//  main.swift
//  2075
//
//  Created by 이치훈 on 2/21/24.
//

_=(0..<n).map { _ in
  let row = readLine()!.split(separator: " ").map { Int(String($0))! }
  
  array += row
}
