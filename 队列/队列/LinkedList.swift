//
//  LinkedList.swift
//  单向链表
//
//  Created by XNIOS on 2019/5/27.
//  Copyright © 2019 Dylan. All rights reserved.
//

import Foundation

let ELEMENT_NOT_FOUND: Int = -1;

public class Node<T: Comparable> {
    var element: T?
    var prev: Node<T>?
    var next: Node<T>?
    
    init(_ element: T, _ next: Node<T>?) {
        self.element = element
        self.next = next
    }
    
    init(_ prev: Node<T>?, _ element: T, _ next: Node<T>?) {
        self.element = element
        self.prev = prev
        self.next = next
    }
}

class LinkedList<T: Comparable> {
    var size: Int = 0
    var first: Node<T>?
    var last: Node<T>?
    
    /// 元素的个数
    public func sizeOfElement() -> Int {
        return size
    }
    
    /// 清除所有元素
    public func clear() -> Void {
        size = 0
        first = nil
        last = nil
    }
    
    /// 是否为空
    public func isEmpty() -> Bool {
        return size == 0
    }
    
    /// 是否包含某个元素
    public func contains(_ element: T) -> Bool {
        return self.indexOf(element) != ELEMENT_NOT_FOUND
    }
    
    /// 添加元素到尾部
    public func add(_ element: T) -> Void {
        self.add(size, element)
    }
    
    /// 获取index位置的元素
    public func get(_ index: Int) -> T? {
        return node(index)?.element
    }
    
    /// 设置index位置的元素
    public func set(_ index: Int, _ element: T) -> T? {
        let oldNode = node(index)
        let oldElement = oldNode?.element
        oldNode?.element = element
        return oldElement;
    }
    
    /// 在index位置插入一个元素
    public func add(_ index: Int, _ element: T) -> Void {
        // 检查index的合法性
        if index < 0 || index > size {
            fatalError("Index:\(index), Size:\(size)")
        }
        
        if index == size { // 插入的位置在末尾
            let oldLast = last
            last = Node(oldLast, element, nil)
            if oldLast == nil { // 节点为空
                first = last
            } else {
                oldLast?.next = last
            }
        } else {
            let next = node(index)
            let prev = next?.prev
            let node = Node(prev, element, next)
            next?.prev = node
            
            if prev == nil {
                first = node
            } else {
                prev?.next = node
            }
        }
        
        size += 1
    }
    
    /// 删除index位置的元素
    public func remove(_ index: Int) -> T? {
        // 检查index的合法性
        if index < 0 || index >= size {
            fatalError("Index:\(index), Size:\(size)")
        }
        
        let del = node(index)
        let prev = del?.prev
        let next = del?.next
        
        if prev == nil {
            first = next
        } else {
            prev?.next = next
        }
        
        if next == nil {
            last = prev
        } else {
            next?.prev = prev
        }
        
        size -= 1
        return del?.element;
    }
    
    /// 查看元素的索引
    public func indexOf(_ element: T?) -> Int {
        var currentNode: Node<T>? = first
        for index in 0..<size {
            if element == currentNode?.element {
                return index
            }
            currentNode = currentNode?.next
        }
        
        return ELEMENT_NOT_FOUND
    }
    
    /// 获取index位置的元素
    private func node(_ index: Int) -> Node<T>? {
        // 检查index的合法性
        if index < 0 || index >= size {
            fatalError("Index:\(index), Size:\(size)")
        }
        
        // index小于size的一半
        if index < (size >> 1) {
            var node = first
            for _ in 0..<index {
                node = node?.next
            }
            return node
        } else {
            var node = last
            for _ in ((index+1)..<size).reversed() {
                node = node?.prev
            }
            return node
        }
    }
}
