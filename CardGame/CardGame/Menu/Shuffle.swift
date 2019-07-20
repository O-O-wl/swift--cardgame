//
//  Shuffle.swift
//  CardGame
//
//  Created by 이동영 on 26/06/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct Shuffle<D: Deck>: Command {
    private var deck: D
    
    init(deck: D) {
        self.deck = deck
    }
    
    mutating func execute() -> GameResult {
        deck.shuffle()
        return GameResult.shuffle(remain: deck.count())
    }
}
