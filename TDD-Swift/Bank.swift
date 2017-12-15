//
//  Bank.swift
//  TDD-Swift
//
//  Created by shinfkd on 2017/12/12.
//

import Foundation
class Bank {
    func reduce(source: Expression, to: String) -> Money {
        return source.reduce(to: to)
    }
}
