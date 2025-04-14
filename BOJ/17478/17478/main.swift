//
//  main.swift
//  17478
//
//  Created by 이치훈 on 4/10/25.
//

let n = Int(readLine()!)!

func printUnderBar(count: Int) {
  for _ in 0..<count*4 {
    print("_",terminator: "")
  }
}

func story(_ localN: Int) {
  if localN > 0 {
    printUnderBar(count: n - localN)
    print("\"재귀함수가 뭔가요?\"")
    printUnderBar(count: n - localN)
    print("\"잘 들어보게. 옛날옛날 한 산 꼭대기에 이세상 모든 지식을 통달한 선인이 있었어.")
    printUnderBar(count: n - localN)
    print("마을 사람들은 모두 그 선인에게 수많은 질문을 했고, 모두 지혜롭게 대답해 주었지.")
    printUnderBar(count: n - localN)
    print("그의 답은 대부분 옳았다고 하네. 그런데 어느 날, 그 선인에게 한 선비가 찾아와서 물었어.\"")
    story(localN-1)
  } else if localN == 0 {
    printUnderBar(count: n - localN)
    print("\"재귀함수가 뭔가요?\"")
    printUnderBar(count: n - localN)
    print("\"재귀함수는 자기 자신을 호출하는 함수라네\"")
    printUnderBar(count: n - localN)
    print("라고 답변하였지.")
    return
  }
  
  printUnderBar(count: n - localN)
  print("라고 답변하였지.")
}

print("어느 한 컴퓨터공학과 학생이 유명한 교수님을 찾아가 물었다.")
story(n)

