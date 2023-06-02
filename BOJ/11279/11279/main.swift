//
//  main.swift
//  11279
//
//  Created by 이치훈 on 2023/06/02.
//

import Foundation

struct MaxHeap {
    var heap = [Int]()
    var heap_size = 0
    
    init(heapConstSize: Int) {
        heap = Array(repeating: 0, count: heapConstSize)
    }
    
    mutating func insertHeap(item: Int) {
        heap_size += 1
        var i = heap_size
        
        while i != 1 && item > heap[i / 2] {
            heap[i] = heap[i / 2]
            i /= 2
        }
        heap[i] = item
    }
    
    mutating func deleteHeap() -> Int {
        if heap_size == 0 {
            return 0
        }
        
        let item = heap[1]
        let temp = heap[heap_size]
        var parent = 1
        var child = 2
        
        heap_size -= 1
        
        while child <= heap_size {
            if (child < heap_size) && (heap[child] < heap[child + 1]) {
                child += 1
            }
            
            if temp >= heap[child] {
                break
            } else {
                heap[parent] = heap[child]
                parent = child
                child *= 2
            }
        }
        heap[parent] = temp
        return item
    }
}

let length = Int(String(readLine()!))!
var maxHeap = MaxHeap(heapConstSize: length)

for _ in 1...length {
    let command = Int(String(readLine()!))!
    
    if command == 0 {
        print(maxHeap.deleteHeap())
    } else {
        maxHeap.insertHeap(item: command)
    }
}
