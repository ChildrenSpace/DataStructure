//
//  main.swift
//  双向链表
//
//  Created by XNIOS on 2019/5/28.
//  Copyright © 2019 dylan. All rights reserved.
//

import Foundation

let link = LinkedList<Int>()
link.add(2)
link.add(4)
link.add(6)
link.add(8)
link.add(10)

link.remove(link.indexOf(6))

var node = link.first
while node != nil {
    print(node?.element as Any)
    node = node?.next
}

link.add(link.indexOf(2), 1)
link.add(link.indexOf(10), 11)
node = link.last
while node != nil {
    print(node?.element as Any)
    node = node?.prev
}
