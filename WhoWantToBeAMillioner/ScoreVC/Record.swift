//
//  Record.swift
//  WhoWantToBeAMillioner
//
//  Created by Michael Iliouchkin on 20.02.2021.
//

import Foundation

struct Record {
    let date: Date
    let score: Int
}

extension Record: Codable {}

typealias Memento = Data
