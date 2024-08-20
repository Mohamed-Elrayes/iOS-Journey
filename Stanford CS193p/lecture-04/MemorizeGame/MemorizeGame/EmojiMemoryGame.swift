//
//  EmojiMemoryGame.swift
//  MemorizeGame
//
//  Created by Mohamed Salah on 20/08/2024.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
  static let emojis: [String] = ["🍏", "🍎", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🍒", "🍑", "🍍", "🥭", "🥥", "🥝"]

  private static func createMyModle() -> MemoryGame<String> {
    return MemoryGame(number0fPairs0fCards: 16) { index in
      if emojis.indices.contains(index) {
        return emojis[index]
      } else {
        return "⁉️"
      }
    }
  }

 @Published private var model = createMyModle()

  var cards: [MemoryGame<String>.Card] { return model.cards }

  // MARK: - Intent

  func choose(card: MemoryGame<String>.Card) { return model.choose(card) }

  func shuffle() {
    return model.shuffle()
  }
}
