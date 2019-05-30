//
//  _203_移除链表元素.swift
//  课后练习
//
//  Created by XNIOS on 2019/5/29.
//  Copyright © 2019 dylan. All rights reserved.
//

// 203. 移除链表元素
// https://leetcode-cn.com/problems/remove-linked-list-elements/

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class SolutionRemove {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var prev: ListNode? = nil
        var node = head
        
        while node != nil {
            if node?.val == val {
                if node?.next != nil {
                    node?.val = (node?.next!.val)!
                    node?.next = node?.next?.next
                } else {
                    prev?.next = nil
                    node = nil
                }
            } else {
                prev = node
                node = node?.next
            }
        }
        
        return (prev != nil) ? head : prev
    }
}
