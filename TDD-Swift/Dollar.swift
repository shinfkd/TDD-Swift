//
//  Dollar.swift
//  TDD-Swift
//
//  Created by shinfkd on 2017/12/02.
//

import Foundation
class Dollar: Money {
    override init(_ amount: Int, currency: String) {
        super.init(amount, currency: currency)
    }

    override func times(_ multiplier: Int) -> Money {
        return Money.dollar(amount * multiplier)
    }
}
