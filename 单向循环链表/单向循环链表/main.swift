//
//  main.swift
//  单向循环链表
//
//  Created by XNIOS on 2019/5/29.
//  Copyright © 2019 dylan. All rights reserved.
//

import Foundation

var list: LinkedList<Int> = LinkedList()

list.add(1);
list.add(3);
list.add(5);
list.add(2);
list.add(8);

//print("删除了\(String(describing: list.remove(1)))+size:\(list.size)")
//
//print("5的下标：\(list.indexOf(5))")
//
//list.add(0, 10)
//print("重写了\(String(describing: list.set(4, 33)))+size:\(list.size)")
//
//list.remove(0)
//list.remove(list.size-1)
//
//for index in 0..<list.size {
//    print(list.get(index) as Any);
//}
//
//print("是否包含8：\(list.contains(8))")

list.add(11);
list.add(22);
list.add(33);
list.add(44);

// 判断是否为环
let node = list.first
var slow = node
var fast = node?.next
while fast != nil && fast?.next != nil {
    slow = slow?.next
    fast = fast?.next?.next
    
    if slow?.element == fast?.element {
        print("有环")
        break
    }
}
