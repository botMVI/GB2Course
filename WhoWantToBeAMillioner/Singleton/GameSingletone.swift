//
//  GameSingletone.swift
//  WhoWantToBeAMillioner
//
//  Created by Michael Iliouchkin on 20.02.2021.
//

import Foundation

class GameSingleton {
    
    static let shared = GameSingleton()
    
    private(set) var records: [Record] {
        didSet {
            recordsCaretaker.saveRecords(records: records)
        }
    }
    
    private let recordsCaretaker = RecordsCaretaker()
    
    private init() {
        records = recordsCaretaker.loadRecords()
    }
    
    func addRecord(_ record: Record) {
        records.append(record)
    }
    
    func clearRecords() {
        records.removeAll()
    }
}
