//
//  CardDeck.swift
//  CardGame
//
//  Created by 이동영 on 26/06/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class CardDeck: Deck {
    typealias Element = Card
    
    private var cards = [Card]()
    private var isEmpty: Bool {
        return count() <= 0
    }
    
    init() {
        reset()
    }
    
    func count() -> Int {
        return cards.count
    }
    
    func removeOne() -> Card? {
        guard !isEmpty else { return nil }
        let randomIndex = Int.random(in: 0..<count())
        let card = cards.remove(at: randomIndex)
        return card
    }
    
    func shuffle() {
        cards.shuffle()
    }
    
    func reset() {
        cards = CardFactory.createAll()
        shuffle()
    }
    
}
// - MARK: - + Equatable
extension CardDeck: Equatable {
    
    static func == (lhs: CardDeck, rhs: CardDeck) -> Bool {
        guard  lhs.count() == rhs.count() else {
            return false
        }
        var same = true
        for index in 0..<lhs.count() {
            same = same && (lhs.cards[index] == rhs.cards[index])
        }
        return same
    }
}
