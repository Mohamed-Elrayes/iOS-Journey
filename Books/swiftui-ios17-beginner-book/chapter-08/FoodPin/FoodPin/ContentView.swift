//
//  ContentView.swift
//  Exercise #2
//
//  Created by Mohamed Salah on 12/08/2024.
//

import SwiftUI

struct ContentView: View {
  @State var restaurantIsFavorites = Array(repeating: false, count: 21)
  var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]

  var restaurantImages = ["cafedeadend", "homei", "teakha", "cafeloisl", "petiteoyster", "forkee", "posatelier", "bourkestreetbakery", "haigh", "palomino", "upstate", "traif", "graham", "waffleandwolf", "fiveleaves", "cafelore", "confessional", "barrafina", "donostia", "royaloak", "cask"]

  var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]

  var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian/ Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee &Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]

  var body: some View {
    List(restaurantNames.indices, id: \.self) { index in
      BasicTextImageRow(
        imageName: restaurantImages[index],
        name: restaurantNames[index],
        type: restaurantTypes[index],
        location: restaurantLocations[index],
        isFavorite: $restaurantIsFavorites[index]
      )

    }.listStyle(.plain)
  }
}

struct BasicTextImageRow: View {
  var imageName: String
  var name: String
  var type: String
  var location: String

  @State private var showOptions = false
  @State private var shoeError = false
  @Binding var isFavorite: Bool

  var body: some View {
    HStack(alignment: .top, spacing: 20) {
      Image(imageName)
        .resizable()
        .frame(width: 120, height: 118)
        .clipShape(RoundedRectangle(cornerRadius: 20))

      VStack(alignment: .leading) {
        Text(name).font(.system(.title2, design: .rounded))

        Text(type)
          .font(.system(.body, design: .rounded))

        Text(location)
          .font(.system(.subheadline, design: .rounded))
          .foregroundStyle(.gray)
      }

      if isFavorite {
        Spacer()

        Image(systemName: "heart.fill")
          .foregroundStyle(.yellow)
      }
    }.onTapGesture {
      showOptions.toggle()
    }.confirmationDialog("What do you want to do?", isPresented: $showOptions, titleVisibility: .visible) {
      Button("Reserve a table") {
        self.shoeError.toggle()
      }

      Button("Mark as favorite") {
        self.isFavorite.toggle()
      }
    }.alert("Not yet available", isPresented: $shoeError) {
      Button("OK") {}
    } message: {
      Text("Sorry, this feature is not available yet. Please retry later.")
    }
  }
}

struct FullImageRow: View {
  var imageName: String
  var name: String
  var type: String
  var location: String

  var body: some View {
    VStack(alignment: .leading) {
      Image(imageName)
        .resizable()
        .scaledToFill()
        .frame(width: .infinity, height: 200)
        .clipShape(RoundedRectangle(cornerRadius: 20))

      VStack(alignment: .leading) {
        Text(name)
          .font(.system(.title2, design: .rounded))

        Text(type)
          .font(.system(.body, design: .rounded))

        Text(location)
          .font(.system(.subheadline, design: .rounded))
          .foregroundStyle(.gray)
      }.padding(.horizontal)
        .padding(.bottom)

    }.listRowSeparator(.hidden)
  }
}

#Preview {
  ContentView()
}

#Preview("BasicTextImageRow", traits: .sizeThatFitsLayout) {
  BasicTextImageRow(imageName: "cafedeadend", name: "Cafe Deadend", type:
    "Cafe", location: "Hong Kong", isFavorite: .constant(true))
}

#Preview("FullImageRow", traits: .sizeThatFitsLayout) {
  FullImageRow(imageName: "cafedeadend", name: "Cafe Deadend", type: "Cafe", location: "Hong Kong")
}
