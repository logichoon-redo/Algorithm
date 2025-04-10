//
//  main.swift
//  25206
//
//  Created by 이치훈 on 4/2/25.
//

var scoreSum: Double = 0.0
var sum: Double = 0.0

for _ in 1...20 {
  let subject = readLine()!.split(separator: " ").map{ String($0) }
  
  switch subject[2] {
  case "A+":
    scoreSum += Double(subject[1])! * 4.5
  case "A0":
    scoreSum += Double(subject[1])! * 4.0
  case "B+":
    scoreSum += Double(subject[1])! * 3.5
  case "B0":
    scoreSum += Double(subject[1])! * 3.0
  case "C+":
    scoreSum += Double(subject[1])! * 2.5
  case "C0":
    scoreSum += Double(subject[1])! * 2.0
  case "D+":
    scoreSum += Double(subject[1])! * 1.5
  case "D0":
    scoreSum += Double(subject[1])! * 1.0
  case "F":
    scoreSum += Double(subject[1])! * 0.0
  default:
    break
  }
  
  if subject[2] != "P" {
    sum += Double(subject[1])!
  }
}

print(scoreSum / sum)
