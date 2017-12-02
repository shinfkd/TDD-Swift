//
//  Dollar.swift
//  TDD-Swift
//
//  Created by shinfkd on 2017/12/02.
//

import Foundation
class Dollar {
    var amount: Int
    init(_ amount: Int) {
        self.amount = amount
    }

    func times(_ multiplier: Int) {
        amount *= multiplier
    }
}
