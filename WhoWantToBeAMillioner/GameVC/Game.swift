//
//  Game.swift
//  WhoWantToBeAMillioner
//
//  Created by Michael Iliouchkin on 23.02.2021.
//

import Foundation

enum GameResultState {
    case win
    case lose
}

class Game {
    static var session: GameSession?
    private static let resultsCaretaker = RecordsCaretaker()
    
    private(set) static var results: [GameResult] = {
        return resultsCaretaker.loadRecords()
    }() {
    didSet {
        resultsCaretaker.saveRecords(records: results)
        }
    }
}
