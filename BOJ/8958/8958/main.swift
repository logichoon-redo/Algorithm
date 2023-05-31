//
//  main.swift
//  8958
//
//  Created by 이치훈 on 2023/05/31.
//

let length = Int(String(readLine()!))!

func OXQuiz() {
    for _ in 1...length {
        let quiz = readLine()!
        checkScore(correct: quiz)
    }
}

func checkScore(correct: String) {
    var resultScore = 0
    var score = 1
    let correct = Array(correct)
    var pointer = Array(correct).first
    
    for i in 0..<correct.count {
        pointer = correct[i]
        
        if pointer == "O" { //O
            if i != 0 && pointer == correct[i - 1] {
                score += 1
            }else{
                score = 1
            }
            resultScore += score
        }else{ //X
            score = 1
        }
        
    }
    print(resultScore)
}

OXQuiz()
