//
//  ContentView.swift
//  MemorizeGame
//
//  Created by Mohamed Salah on 20/08/2024.
//

import SwiftUI

struct EmojiMemoryGameView: View {
  @ObservedObject var viewModle: EmojiMemoryGame

  // MARK: - Body

  var body: some View {
    VStack {
      ScrollView {
        cards
      }
      Button("Shuffled") {
        viewModle.shuffle()
      }
    }
    .padding()
  }

  // MARK: - Componnent

  var cards: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 85), spacing: 0)], spacing: 0) {
      ForEach(viewModle.cards.indices, id: \.self) { index in
        CardView(viewModle.cards[index])
          .aspectRatio(2 / 3, contentMode: .fit)
          .padding(4)
      }
    }
    .foregroundColor(.orange)
  }
}

struct CardView: View {
  var card: MemoryGame<String>.Card

  init(_ card: MemoryGame<String>.Card) {
    self.card = card
  }

  var body: some View {
    let base = RoundedRectangle(cornerRadius: 12)
    ZStack {
      Group {
        base
          .foregroundColor(.white)
        base
          .strokeBorder(lineWidth: 2)
        Text(card.content)
          .font(.system(size: 200))
          .minimumScaleFactor(0.1)
          .aspectRatio(1, contentMode: .fit)

      }.opacity(card.isFaceUp ? 1 : 0)

      base.fill().opacity(card.isFaceUp ? 0 : 1)
    }
  }
}

#Preview {
  EmojiMemoryGameView(viewModle: EmojiMemoryGame())
}
