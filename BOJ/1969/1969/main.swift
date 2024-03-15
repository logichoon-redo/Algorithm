//
//  main.swift
//  1969
//
//  Created by 이치훈 on 3/15/24.
//

let  nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0], m = nm[1]
var dna = [[String]]()
_=(0..<n).map { _ in
  dna.append(Array(readLine()!).map { String($0) })
}
var answer = ""
var distance = 0

_=(0..<m).map { i in
  var DNACode: [(count: Int, index: Int)] = [(0, 0) ,(0, 1) ,(0, 2) ,(0, 3)] // ACGT
  
  _=(0..<n).map { j in
    switch dna[j][i] {
    case "A":
      DNACode[0].count += 1
    case "C":
      DNACode[1].count += 1
    case "G":
      DNACode[2].count += 1
    case "T":
      DNACode[3].count += 1
    default:
      break
    }
  }
  
  let maxCountDNA = DNACode.max {
    $0.count < $1.count
  }
 
  switch maxCountDNA!.index {
  case 0: answer += "A"
  case 1: answer += "C"
  case 2: answer += "G"
  case 3: answer += "T"
  default: break
  }
  
  distance += n - maxCountDNA!.count
}

print(answer)
print(distance)
