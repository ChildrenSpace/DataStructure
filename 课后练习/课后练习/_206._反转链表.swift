//
//  _206._反转链表.swift
//  课后练习
//
//  Created by XNIOS on 2019/5/28.
//  Copyright © 2019 dylan. All rights reserved.
//

//  206. 反转链表
//  https://leetcode-cn.com/problems/reverse-linked-list/

import Foundation

class Solution<T: Comparable> {
    func reverseList(_ head: Node<T>?) -> Node<T>? {
        var temp = head
        var newHead: Node<T>?
        while temp != nil {
            let node = temp?.next
            temp?.next = newHead
            newHead = temp
            temp = node
        }
        
        return newHead;
    }
}
