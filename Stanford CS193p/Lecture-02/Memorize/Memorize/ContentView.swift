//
//  ContentView.swift
//  Memorize
//
//  Created by Mohamed Salah on 17/08/2024.
//

import SwiftUI

struct ContentView: View {
  let emojis = ["👻", "👀", "🐉", "👽", "🤖", "💀", "♻️", "👻", "👀", "🐉", "👽", "🤖", "💀", "♻️"]
  @State var cardCount: Int = 14

  // MARK: - Body

  var body: some View {
    VStack {
      ScrollView {
        cards
      }
      Spacer()
      cardCountAdjusters
    }
    .padding()
  }

  // MARK: - Componnent

  var cardCountAdjusters: some View {
    HStack {
      cardRemover
      Spacer()
      cardAdder
    }.font(.largeTitle)
  }

  var cards: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
      ForEach(0 ..< cardCount, id: \.self) { index in
        CardView(content: emojis[index])
      }
    }
    .foregroundColor(.orange)
  }

  // MARK: - Buttns

  func cardCountAdjuster(by offset: Int, symbol: String) -> some View {
    Button {
      cardCount += offset
    } label: {
      Image(systemName: symbol)
    }.disabled(cardCount + offset < 1 || cardCount + offset > emojis.count)
  }

  var cardRemover: some View {
    cardCountAdjuster(by: -1, symbol: "rectangle.stack.badge.minus.fill")
  }

  var cardAdder: some View {
    cardCountAdjuster(by: 1, symbol: "rectangle.stack.badge.plus.fill")
  }
}

struct CardView: View {
  var content: String

  @State var isFaceUp: Bool = false

  var body: some View {
    let base = RoundedRectangle(cornerRadius: 12)
    ZStack {
      Group {
        base
          .foregroundColor(.white)
        base
          .strokeBorder(lineWidth: 2)
        Text(content).font(.largeTitle)
      }.opacity(isFaceUp ? 1 : 0)

      base.fill().opacity(isFaceUp ? 0 : 1)
    }

    .onTapGesture {
      isFaceUp.toggle()
    }
  }
}

#Preview {
  ContentView()
}
