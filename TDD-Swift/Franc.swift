//
//  Franc.swift
//  TDD-Swift
//
//  Created by shinfkd on 2017/12/06.
//

import Foundation
class Franc: Money {

    override init(_ amount: Int) {
        super.init(amount)
        self.amount = amount
    }

    func times(_ multiplier: Int) -> Franc {
        return Franc(amount * multiplier)
    }
}
