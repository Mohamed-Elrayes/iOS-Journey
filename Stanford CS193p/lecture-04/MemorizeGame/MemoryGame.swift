//
//  MemoryGame.swift
//  MemorizeGame
//
//  Created by Mohamed Salah on 20/08/2024.
//

import Foundation

struct MemoryGame<CardContent> {
  private(set) var cards: [Card]

  init(number0fPairs0fCards: Int, content: (Int) -> CardContent) {
    cards = []
    for index in 0 ..< max(2, number0fPairs0fCards) {
      cards.append(Card(content: content(index)))
      cards.append(Card(content: content(index)))
    }
  }

  // MARK: - Intent

  func choose(_ card: Card) {}

  mutating func shuffle() {
    cards.shuffle()
  }

  struct Card {
    var isFaceUp: Bool = true
    var isMatched: Bool = false
    var content: CardContent
  }
}
