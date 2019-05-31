//
//  Deque.swift
//  队列
//
//  Created by XNIOS on 2019/5/31.
//  Copyright © 2019 dylan. All rights reserved.
//  双端队列

import Foundation

class Deque<T: Comparable> {
    private var list: LinkedList<T> = LinkedList<T>()

    /// 元素的个数
    func size() -> Int {
        return list.size
    }
    
    /// 是否为空
    func isEmpty() -> Bool {
        return list.isEmpty()
    }
    
    /// 清除所有元素
    func clear() -> Void {
        list.clear()
    }
    
    /// 从队尾入队
    func enQueueRear(_ element: T) {
        list.add(element)
    }
    
    /// 从队头出队
    func deQueueFront() -> T? {
        return list.remove(0)
    }
    
    /// 从队头入队
    func enQueueFront(_ element: T) {
        list.add(0, element)
    }
    
    /// 从队尾出队
    func deQueueRear() -> T? {
        return list.remove(list.size - 1)
    }
    
    /// 队头
    func front() -> T? {
        return list.first?.element
    }
    
    /// 队尾
    func rear() -> T? {
        return list.last?.element
    }
}
