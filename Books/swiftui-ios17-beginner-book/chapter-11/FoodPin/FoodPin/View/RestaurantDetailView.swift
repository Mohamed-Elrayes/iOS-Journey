//
//  RestaurantDetailView.swift
//  FoodPin
//
//  Created by Mohamed Salah on 14/08/2024.
//

import SwiftUI

struct RestaurantDetailView: View {
  @Environment(\.dismiss) var dismiss

  var restaurant: Restaurant
  var body: some View {
    ZStack(alignment: .top) {
      Image(restaurant.image)
        .resizable()
        .scaledToFill()
        .frame(minWidth: 0, maxWidth: .infinity)
        .ignoresSafeArea()

      Color.black
        .frame(height: 100)
        .opacity(0.8)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding()
        .overlay {
          VStack(spacing: 5) {
            Text(restaurant.name)
            Text(restaurant.type)
            Text(restaurant.location)
          }
          .font(.system(.headline, design: .rounded))
          .foregroundStyle(.white)
        }
    }

    // To Customiz appBar
    .navigationBarBackButtonHidden(true)
    .toolbar {
      ToolbarItem(placement: .navigationBarLeading) {
        Button(action: {
          dismiss()
        }) {
          Text("\(Image(systemName: "chevron.left")) \(restaurant.name)")
        }.foregroundStyle(.white)
      }
    }
  }
}

#Preview {
  RestaurantDetailView(restaurant: Restaurant(name: "Cafe Deadend", type: "C afe", location: "Hong Kong", image: "cafedeadend", isFavorite: true))
}
