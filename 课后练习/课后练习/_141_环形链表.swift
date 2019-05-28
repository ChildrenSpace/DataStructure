//
//  _141_环形链表.swift
//  课后练习
//
//  Created by XNIOS on 2019/5/28.
//  Copyright © 2019 dylan. All rights reserved.
//

// 141. 环形链表
// https://leetcode-cn.com/problems/linked-list-cycle/submissions/

import Foundation

class Solution_Cycle<T: Comparable> {
    func hasCycle(_ node: Node<T>?) -> Bool {
        if node == nil || node?.next == nil {
            return false
        }
        
        var slow = node
        var fast = node?.next
        
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            
            if slow?.element == fast?.element {
                return true
            }
        }
        
        return false
    }
}
