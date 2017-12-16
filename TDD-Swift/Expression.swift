//
//  Expression.swift
//  TDD-Swift
//
//  Created by shinfkd on 2017/12/12.
//

import Foundation
protocol Expression {
    func plus(_ addend: Expression) -> Expression
    func reduce(bank: Bank, to: String) -> Money
}
