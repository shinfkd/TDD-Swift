//
//  Dollar.swift
//  TDD-Swift
//
//  Created by shinfkd on 2017/12/02.
//

import Foundation
class Dollar: Money {

    override init(_ amount: Int) {
        super.init(amount)
        self.amount = amount
    }

    func times(_ multiplier: Int) -> Dollar {
        return Dollar(amount * multiplier)
    }
}
