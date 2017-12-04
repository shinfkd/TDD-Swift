//
//  Dollar.swift
//  TDD-Swift
//
//  Created by shinfkd on 2017/12/02.
//

import Foundation
class Dollar: Equatable {
    var amount: Int

    init(_ amount: Int) {
        self.amount = amount
    }

    func times(_ multiplier: Int) -> Dollar {
        return Dollar(amount * multiplier)
    }

    static func == (lhs: Dollar, rhs: Dollar) -> Bool {
        return lhs.amount == rhs.amount
    }
}
