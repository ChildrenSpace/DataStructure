//
//  main.swift
//  单向链表
//
//  Created by Dylan on 2019/5/26.
//  Copyright © 2019 Dylan. All rights reserved.
//

import Foundation

var list: LinkedList<Int> = LinkedList()

list.add(1);
list.add(3);
list.add(5);
list.add(2);
list.add(8);

print("删除了\(String(describing: list.remove(1)))+size:\(list.size)")

print("5的下标：\(list.indexOf(5))")

list.add(0, 10)
print("重写了\(String(describing: list.set(4, 33)))+size:\(list.size)")

list.remove(0)
list.remove(list.size-1)

for index in 0..<list.size {
    print(list.get(index) as Any);
}

print("是否包含5：\(list.contains(8))")
