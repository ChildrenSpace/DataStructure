//
//  main.swift
//  栈
//
//  Created by XNIOS on 2019/5/30.
//  Copyright © 2019 dylan. All rights reserved.
//

import Foundation

let stack = Stack<Character>()

let str = "()[]{}"
var result: Bool = true

for a in str {
    if a == "(" || a == "{" || a == "[" {
        stack.push(a)
    } else {
        if stack.isEmpty() {
            result = false
            break
        } else {
            let temp = stack.pop()
            if temp == "(" && a == ")" {
                continue
            } else if temp == "[" && a == "]" {
                continue
            } else if temp == "{" && a == "}" {
                continue
            } else {
                result = false
                break
            }
        }

    }
}

if stack.isEmpty() && result == true {
    print("true")
} else {
    print("false")
}
