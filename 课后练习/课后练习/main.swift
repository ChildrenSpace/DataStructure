//
//  main.swift
//  课后练习
//
//  Created by XNIOS on 2019/5/27.
//  Copyright © 2019 dylan. All rights reserved.

import Foundation


var list = LinkedList<Int>()
list.add(1)
list.add(2)
list.add(3)
list.add(4)
list.add(5)
list.add(6)

for index in 0..<list.size {
    print(list.get(index) as Any)
}

print("==============")

var node = Solution().reverseList(list.first)
while node != nil {
    print(node?.element as Any)
    node = node?.next
}
