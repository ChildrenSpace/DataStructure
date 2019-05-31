//
//  main.swift
//  队列
//
//  Created by XNIOS on 2019/5/31.
//  Copyright © 2019 dylan. All rights reserved.
//

import Foundation

//let queue = Queue<Int>();
//queue.enQueue(11);
//queue.enQueue(22);
//queue.enQueue(33);
//queue.enQueue(44);
//
//while !queue.isEmpty() {
//    print(queue.deQueue() as Any)
//}


let queue = Deque<Int>();
queue.enQueueFront(11);
queue.enQueueFront(22);
queue.enQueueRear(33);
queue.enQueueRear(44);

/* 尾  44  33   11  22 头 */

while (!queue.isEmpty()) {
    print(queue.deQueueFront() as Any)
}
