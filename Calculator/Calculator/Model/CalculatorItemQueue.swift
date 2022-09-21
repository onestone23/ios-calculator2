//
//  CalculatorItemQueue.swift
//  Calculator
//
//  Created by 맹선아 on 2022/09/19.
//

import Foundation

struct CalculatorItemQueue: CalculateItem {
    var itemQueue: LinkedList = LinkedList()
    
    mutating func enqueue(_ data: String) {
        self.itemQueue.append(data)
    }
    
    mutating func dequeue() -> Node<String>? {
        let firstItem = self.itemQueue.removeFirst()
        return firstItem
    }

    mutating func clear() {
        self.itemQueue.head = nil
    }
}
