//
//  ViewController.swift
//  Elf
//
//  Created by JimLai on 2019/1/26.
//  Copyright © 2019 JimLai. All rights reserved.
//

import UIKit

protocol Re: Redux {
    var p1: Int {get set}
    var p2: String {get set}
    func test() -> Self
}

extension Re {
    func test() -> Self {
        return effect()
    }
    func chain() -> Self {
        return effect()
    }
}

class ViewController: UIViewController, Re {
    var p1 = 0
    var p2 = "prop"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        action() << test().chain().effect("reducer") {
            p1 = 10
            p2 = "state change"
        }
    }
}

