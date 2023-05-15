//
//  main.swift
//  10988
//
//  Created by 이치훈 on 2023/05/16.
//

let word = Array(readLine()!).map {
    String($0)
}

func isPalindrome() -> Int {
    for i in 0...word.count - 1 {
        guard word[i] == word[word.count - i - 1] else {
            return 0
        }
    }
    return 1
}

print(isPalindrome())
