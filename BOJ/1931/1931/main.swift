//
//  main.swift
//  1931
//
//  Created by 이치훈 on 2/22/24.
//

let n = Int(readLine()!)!
var conferences = [(start: Int, end: Int)]()
var answer = 0
var current = -1
_=(1...n).map { _ in
  let conference = readLine()!.split(separator: " ").map { Int(String($0))! }
  let start = conference[0], end = conference[1]
  
  conferences.append((start, end))
}

conferences.sort { a, b -> Bool in
  if a.end == b.end {
    return a.start < b.start
  } else {
    return a.end < b.end
  }
}

_=conferences.map {
  if $0.start >= current {
    current = $0.end
    answer += 1
  }
}

print(answer)
