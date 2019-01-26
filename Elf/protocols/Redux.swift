//
//  Redux.swift
//  Elf
//
//  Created by JimLai on 2019/1/26.
//  Copyright © 2019 JimLai. All rights reserved.
//

import UIKit

func dp(_ any: Any...) {
    print(any)
}

protocol Redux: class {
    func action(_ f: String) -> (Self) -> ()
    func effect(_ f: String) -> Self
    func effect(_ desc: String, _ cls: () -> ()) -> Self
}

extension Redux {
    var marker: String {
        return "       ----------------------------------"
    }
    func action(_ f: String = #function) -> (Self) -> () {
        dp(f+marker)
        return {_ in }
    }
    
    func effect(_ f: String = #function) -> Self {
        dp(f)
        return self
    }
    
    func effect(_ desc: String, _ cls: () -> ()) -> Self {
        dp(desc)
        cls()
        return self
    }
}

infix operator <<

func <<<T>(_ lhs: (T) -> (), _ rhs: T) {
    lhs(rhs)
}
