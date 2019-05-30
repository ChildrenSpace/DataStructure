//
//  Stack.swift
//  栈
//
//  Created by XNIOS on 2019/5/30.
//  Copyright © 2019 dylan. All rights reserved.
//

import Foundation

class Stack<T: Comparable> {
    private var arr: Array<T> = []
    
    public func clear() -> Void {
        arr = []
    }
    
    public func size() -> Int {
        return arr.count
    }
    
    public func isEmpty() -> Bool {
        return size() == 0
    }
    
    public func push(_ element: T) -> Void {
        arr.append(element)
    }
    
    public func pop() -> T? {
        return arr.popLast()
    }
    
    public func top() -> T? {
        return arr.last
    }
}
