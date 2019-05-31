//
//  Queue.swift
//  队列
//
//  Created by XNIOS on 2019/5/31.
//  Copyright © 2019 dylan. All rights reserved.
//  队列

import Foundation

class Queue<T: Comparable> {
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
    
    /// 入队
    func enQueue(_ element: T) -> Void {
        list.add(element)
    }
    
    /// 出队
    func deQueue() -> T? {
        return list.remove(0)
    }
    
    /// 获取队列的头元素
    func front() -> T? {
        return list.get(0)
    }
}
