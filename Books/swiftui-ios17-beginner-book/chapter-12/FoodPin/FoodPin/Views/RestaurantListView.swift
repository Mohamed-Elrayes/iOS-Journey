//
//  RestaurantListView.swift
//  FoodPin
//
//  Created by Mohamed Salah on 15/08/2024.
//

import SwiftUI

import SwiftUI

struct RestaurantListView: View {
  @State var restaurants = [
    Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location: "Hong Kong", image: "cafedeadend", isFavorite: false, phone: "232-923423", description: "Searching for great breakfast eateries andcoffee? This place is for you. We open at 6:30 every morning, and close at9 PM. We offer espresso and espresso based drink, such as capuccino, cafelatte, piccolo and many more. Come over and enjoy a great meal."),
    Restaurant(name: "Homei", type: "Cafe", location: "Hong Kong", image: "homei", isFavorite: false, phone: "348-233423", description: "A little gem hidden at the corner of the street is nothing butfantastic! This place is warm and cozy. We open at 7 every morning exceptSunday, and close at 9 PM. We offer a variety of coffee drinks and specialties including lattes, cappuccinos, teas, and more. We serve breakfast, lunch, and dinner in an airy open setting. Come over, have a coffee and enjoy a chit-chat with our baristas."),
    Restaurant(name: "Teakha", type: "Tea House", location: "Hong Kong", image: "teakha", isFavorite: false,
               phone: "348-233423", description: "A little gem hidden at the corner of the street is nothing butfantastic! This place is warm and cozy. We open at 7 every morning exceptSunday, and close at 9 PM. We offer a variety of coffee drinks and specialties including lattes, cappuccinos, teas, and more. We serve breakfast, lunch, and dinner in an airy open setting. Come over, have a coffee and enjoy a chit-chat with our baristas."),
    Restaurant(name: "Cafe loisl", type: "Austrian / Causual Drink", location: "Hong Kong", image: "cafeloisl", isFavorite: false, phone: "232-923423", description: "Searching for great breakfast eateries andcoffee? This place is for you. We open at 6:30 every morning, and close at9 PM. We offer espresso and espresso based drink, such as capuccino, cafelatte, piccolo and many more. Come over and enjoy a great meal."),
    Restaurant(name: "Petite Oyster", type: "French", location: "Hong Kong", image: "petiteoyster", isFavorite: false,
               phone: "348-233423", description: "A little gem hidden at the corner of the street is nothing butfantastic! This place is warm and cozy. We open at 7 every morning exceptSunday, and close at 9 PM. We offer a variety of coffee drinks and specialties including lattes, cappuccinos, teas, and more. We serve breakfast, lunch, and dinner in an airy open setting. Come over, have a coffee and enjoy a chit-chat with our baristas."),
    Restaurant(name: "For Kee Restaurant", type: "Bakery", location: "Hong Kong", image: "forkee", isFavorite: false, phone: "232-923423", description: "Searching for great breakfast eateries andcoffee? This place is for you. We open at 6:30 every morning, and close at9 PM. We offer espresso and espresso based drink, such as capuccino, cafelatte, piccolo and many more. Come over and enjoy a great meal."),
    Restaurant(name: "Po's Atelier", type: "Bakery", location: "Hong Kong", image: "posatelier", isFavorite: false, phone: "348-233423", description: "A little gem hidden at the corner of the street is nothing butfantastic! This place is warm and cozy. We open at 7 every morning exceptSunday, and close at 9 PM. We offer a variety of coffee drinks and specialties including lattes, cappuccinos, teas, and more. We serve breakfast, lunch, and dinner in an airy open setting. Come over, have a coffee and enjoy a chit-chat with our baristas."),
    Restaurant(name: "Bourke Street Backery", type: "Chocolate", location: "Sydney", image: "bourkestreetbakery", isFavorite: false, phone: "232-923423", description: "Searching for great breakfast eateries andcoffee? This place is for you. We open at 6:30 every morning, and close at9 PM. We offer espresso and espresso based drink, such as capuccino, cafelatte, piccolo and many more. Come over and enjoy a great meal."),
    Restaurant(name: "Haigh's Chocolate", type: "Cafe", location: "Sydney", image: "haigh", isFavorite: false, phone: "348-233423", description: "A little gem hidden at the corner of the street is nothing butfantastic! This place is warm and cozy. We open at 7 every morning exceptSunday, and close at 9 PM. We offer a variety of coffee drinks and specialties including lattes, cappuccinos, teas, and more. We serve breakfast, lunch, and dinner in an airy open setting. Come over, have a coffee and enjoy a chit-chat with our baristas."),
    Restaurant(name: "Palomino Espresso", type: "American / Seafood", location: "Sydney", image: "palomino", isFavorite: false, phone: "232-923423", description: "Searching for great breakfast eateries andcoffee? This place is for you. We open at 6:30 every morning, and close at9 PM. We offer espresso and espresso based drink, such as capuccino, cafelatte, piccolo and many more. Come over and enjoy a great meal."),
    Restaurant(name: "Upstate", type: "American", location: "New York", image: "upstate", isFavorite: false, phone: "348-233423", description: "A little gem hidden at the corner of the street is nothing butfantastic! This place is warm and cozy. We open at 7 every morning exceptSunday, and close at 9 PM. We offer a variety of coffee drinks and specialties including lattes, cappuccinos, teas, and more. We serve breakfast, lunch, and dinner in an airy open setting. Come over, have a coffee and enjoy a chit-chat with our baristas."),
    Restaurant(name: "Traif", type: "American", location: "New York", image: "traif", isFavorite: false, phone: "232-923423", description: "Searching for great breakfast eateries andcoffee? This place is for you. We open at 6:30 every morning, and close at9 PM. We offer espresso and espresso based drink, such as capuccino, cafelatte, piccolo and many more. Come over and enjoy a great meal."),
    Restaurant(name: "Graham Avenue Meats", type: "Breakfast & Brunch", location: "New York", image: "graham", isFavorite: false, phone: "348-233423", description: "A little gem hidden at the corner of the street is nothing butfantastic! This place is warm and cozy. We open at 7 every morning exceptSunday, and close at 9 PM. We offer a variety of coffee drinks and specialties including lattes, cappuccinos, teas, and more. We serve breakfast, lunch, and dinner in an airy open setting. Come over, have a coffee and enjoy a chit-chat with our baristas."),
    Restaurant(name: "Waffle & Wolf", type: "Coffee & Tea", location: "New York", image: "waffleandwolf", isFavorite: false, phone: "232-923423", description: "Searching for great breakfast eateries andcoffee? This place is for you. We open at 6:30 every morning, and close at9 PM. We offer espresso and espresso based drink, such as capuccino, cafelatte, piccolo and many more. Come over and enjoy a great meal."),
    Restaurant(name: "Five Leaves", type: "Coffee & Tea", location: "New York", image: "fiveleaves", isFavorite: false, phone: "348-233423", description: "A little gem hidden at the corner of the street is nothing butfantastic! This place is warm and cozy. We open at 7 every morning exceptSunday, and close at 9 PM. We offer a variety of coffee drinks and specialties including lattes, cappuccinos, teas, and more. We serve breakfast, lunch, and dinner in an airy open setting. Come over, have a coffee and enjoy a chit-chat with our baristas."),
    Restaurant(name: "Cafe Lore", type: "Latin American", location: "New York", image: "cafelore", isFavorite: false, phone: "232-923423", description: "Searching for great breakfast eateries andcoffee? This place is for you. We open at 6:30 every morning, and close at9 PM. We offer espresso and espresso based drink, such as capuccino, cafelatte, piccolo and many more. Come over and enjoy a great meal."),
    Restaurant(name: "Confessional", type: "Spanish", location: "New York", image: "confessional", isFavorite: false, phone: "348-233423", description: "A little gem hidden at the corner of the street is nothing butfantastic! This place is warm and cozy. We open at 7 every morning exceptSunday, and close at 9 PM. We offer a variety of coffee drinks and specialties including lattes, cappuccinos, teas, and more. We serve breakfast, lunch, and dinner in an airy open setting. Come over, have a coffee and enjoy a chit-chat with our baristas."),
    Restaurant(name: "Barrafina", type: "Spanish", location: "London", image: "barrafina", isFavorite: false, phone: "232-923423", description: "Searching for great breakfast eateries andcoffee? This place is for you. We open at 6:30 every morning, and close at9 PM. We offer espresso and espresso based drink, such as capuccino, cafelatte, piccolo and many more. Come over and enjoy a great meal."),
    Restaurant(name: "Donostia", type: "Spanish", location: "London", image: "donostia", isFavorite: false, phone: "348-233423", description: "A little gem hidden at the corner of the street is nothing butfantastic! This place is warm and cozy. We open at 7 every morning exceptSunday, and close at 9 PM. We offer a variety of coffee drinks and specialties including lattes, cappuccinos, teas, and more. We serve breakfast, lunch, and dinner in an airy open setting. Come over, have a coffee and enjoy a chit-chat with our baristas."),
    Restaurant(name: "Royal Oak", type: "British", location: "London", image: "royaloak", isFavorite: false, phone: "232-923423", description: "Searching for great breakfast eateries andcoffee? This place is for you. We open at 6:30 every morning, and close at9 PM. We offer espresso and espresso based drink, such as capuccino, cafelatte, piccolo and many more. Come over and enjoy a great meal."),
    Restaurant(name: "CASK Pub and Kitchen", type: "Thai", location: "London", image: "cask", isFavorite: false, phone: "348-233423", description: "A little gem hidden at the corner of the street is nothing butfantastic! This place is warm and cozy. We open at 7 every morning exceptSunday, and close at 9 PM. We offer a variety of coffee drinks and specialties including lattes, cappuccinos, teas, and more. We serve breakfast, lunch, and dinner in an airy open setting. Come over, have a coffee and enjoy a chit-chat with our baristas.")
  ]

  var body: some View {
    NavigationStack {
      List(restaurants.indices, id: \.self) { index in
        NavigationLink(
          destination: RestaurantDetailView(restaurant: $restaurants[index])
        ) {
          BasicTextImageRow(restaurant: $restaurants[index])
        }
      }.listStyle(.plain)
        .listStyle(.plain)
        .navigationTitle("FoodPin")
        .navigationBarTitleDisplayMode(.automatic)
    }
  }
}

#Preview {
  RestaurantListView()
}

#Preview("Dark mode") {
  RestaurantListView()
    .preferredColorScheme(.dark)
}

#Preview("BasicTextImageRow", traits: .sizeThatFitsLayout) {
  RestaurantDetailView(restaurant:

    .constant(
      Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location: "G/F, 72 Po Hing Fong, Sheung Wan, Hong Kong", image: "cafedeadend", isFavorite: true, phone: "232-923423", description: "Searching for great breakfast eateries and coffee? This place is for you. We open at 6:30 every morning, and close at 9 PM. We offer espresso and espresso based drink, such as capuccino, cafe latte, piccolo and many more. Come over and enjoy a great meal."))
  )
}

#Preview("FullImageRow", traits: .sizeThatFitsLayout) {
  FullImageRow(imageName: "cafedeadend", name: "Cafe Deadend", type: "Cafe", location: "Hong Kong", isFavorite: .constant(true))
}

struct BasicTextImageRow: View {
  // MARK: - Binding

  @Binding var restaurant: Restaurant

  // MARK: - State variables

  @State private var showOptions = false
  @State private var showError = false

  var body: some View {
    HStack(alignment: .top, spacing: 20) {
      Image(restaurant.image)
        .resizable()
        .frame(width: 120, height: 118)
        .clipShape(RoundedRectangle(cornerRadius: 20))

      VStack(alignment: .leading) {
        Text(restaurant.name)
          .font(.system(.title2, design: .rounded))

        Text(restaurant.type)
          .font(.system(.body, design: .rounded))

        Text(restaurant.location)
          .font(.system(.subheadline, design: .rounded))
          .foregroundStyle(.gray)
      }

      if restaurant.isFavorite {
        Spacer()

        Image(systemName: "heart.fill")
          .foregroundStyle(.yellow)
      }
    }

    .contextMenu {
      Button(action: {
        self.showError.toggle()
      }) {
        HStack {
          Text("Reserve a table")
          Image(systemName: "phone")
        }
      }

      Button(action: {
        self.restaurant.isFavorite.toggle()
      }) {
        HStack {
          Text(restaurant.isFavorite ? "Remove from favorites" : "Mark as favorite")
          Image(systemName: "heart")
        }
      }

      Button(action: {
        self.showOptions.toggle()
      }) {
        HStack {
          Text("Share")
          Image(systemName: "square.and.arrow.up")
        }
      }
    }
    .alert("Not yet available", isPresented: $showError) {
      Button("OK") {}
    } message: {
      Text("Sorry, this feature is not available yet. Please retry later.")
    }
    .sheet(isPresented: $showOptions) {
      let defaultText = "Just checking in at \(restaurant.name)"

      if let imageToShare = UIImage(named: restaurant.image) {
        ActivityView(activityItems: [defaultText, imageToShare])
      } else {
        ActivityView(activityItems: [defaultText])
      }
    }
  }
}

struct FullImageRow: View {
  var imageName: String
  var name: String
  var type: String
  var location: String

  @Binding var isFavorite: Bool

  var body: some View {
    VStack(alignment: .leading, spacing: 10) {
      Image(imageName)
        .resizable()
        .scaledToFill()
        .frame(height: 200)
        .clipShape(RoundedRectangle(cornerRadius: 20))

      HStack(alignment: .top) {
        VStack(alignment: .leading) {
          Text(name)
            .font(.system(.title2, design: .rounded))

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
      }
      .padding(.horizontal)
      .padding(.bottom)
    }
  }
}
