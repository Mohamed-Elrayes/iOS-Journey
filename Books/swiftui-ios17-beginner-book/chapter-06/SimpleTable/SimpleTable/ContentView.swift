//
//  ContentView.swift
//  SimpleTable
//
//  Created by Mohamed Salah on 11/08/2024.
//

import SwiftUI

struct ContentView: View {
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery",
                           "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]

    var body: some View {
        List(restaurantNames, id: \.self) { item in

            HStack {
                Image("restaurant")
                    .resizable()
                    .frame(width: 40, height: 40)

                Text(item)
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContentView()
}
