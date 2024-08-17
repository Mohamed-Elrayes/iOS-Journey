//
//  ContentView.swift
//  Assignment
//
//  Created by Mohamed Salah on 17/08/2024.
//

import SwiftUI

struct ContentView: View {
  init() {
    emojis = travelPlaces
    color = .red
  }

  @State var emojis: [String]
  @State var color: Color

  // Food & Drink
  let foodDrink: [String] = ["🍏", "🍎", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🍒", "🍑", "🍍", "🥭", "🥥", "🥝"]

  // Activities & Sports
  let activitiesSports: [String] = ["⚽", "🏀", "🏈", "⚾", "🎾", "🏐", "🏉", "🎱", "🏓", "🏸", "🎳", "🏒", "🏑", "🏹", "🥋"]

  // Travel & Places
  let travelPlaces: [String] = ["🚗", "🚕", "🚙", "🚌", "🚎", "🚑", "🚒", "🚓", "🛺", "🚚", "🚜", "🏍️", "🛵", "🚲", "🚏"]

  // MARK: - Body

  var body: some View {
    VStack {
      Text("Memorize!")
        .font(.largeTitle)

      ScrollView {
        BodyCardsView(emojis: $emojis,
                      themColor: $color)
      }

      themes
    }
    .padding()
  }

  // MARK: - Componnent

  var themes: some View {
    HStack(alignment: .center,
           content: {
             Spacer()
             buttun(lable: "Vehicle", icon: "car.fill") {
               emojis = travelPlaces
               color = .red
             }.foregroundStyle(.red)
             Spacer()
             buttun(lable: "Sport", icon: "volleyball.fill") {
               emojis = activitiesSports
               color = .green
             }.foregroundStyle(.green)

             Spacer()

             buttun(lable: "Food", icon: "fork.knife") {
               emojis = foodDrink
               color = .orange
             }.foregroundStyle(.orange)
             Spacer()
           })
  }

  func buttun(lable: String, icon: String, callBack: @escaping () -> Void) -> some View {
    Button(action: callBack, label: {
      VStack {
        Image(systemName: icon)
          .font(.largeTitle)
        Text(lable)
      }
    })
  }
}

struct BodyCardsView: View {
  @Binding var emojis: [String]
  @Binding var themColor: Color

  var body: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 60))]) {
      ForEach(emojis, id: \.self) { item in
        CardView(content: item)
          .frame(height: 100)
      }
    }
    .foregroundColor(themColor)
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
