//
//  ContentView.swift
//  Exercise #2
//
//  Created by Mohamed Salah on 12/08/2024.
//

import SwiftUI

struct ContentView: View {
  var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]

  var restaurantImages = ["cafedeadend", "homei", "teakha", "cafeloisl", "petiteoyster", "forkee", "posatelier", "bourkestreetbakery", "haigh", "palomino", "upstate", "traif", "graham", "waffleandwolf", "fiveleaves", "cafelore", "confessional", "barrafina", "donostia", "royaloak", "cask"]

  var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]

  var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian/ Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee &Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]

  var body: some View {
    List(restaurantNames.indices, id: \.self) { index in
      VStack(alignment: .leading) {
        Image(restaurantImages[index])
          .resizable()
          .scaledToFill()
          .frame(width: .infinity, height: 200)
          .clipShape(RoundedRectangle(cornerRadius: 20))

        VStack(alignment: .leading) {
          Text(restaurantNames[index])
            .font(.system(.title2, design: .rounded))

          Text(restaurantTypes[index])
            .font(.system(.body, design: .rounded))

          Text(restaurantLocations[index])
            .font(.system(.subheadline, design: .rounded))
            .foregroundStyle(.gray)
        }.padding(.leading)

      }.listRowSeparator(.hidden)
    }.listStyle(.plain)
  }
}

#Preview {
  ContentView()
}

#Preview("Dark mode") {
  ContentView()
    .preferredColorScheme(.dark)
}
