//
//  FoodPinApp.swift
//  FoodPin
//
//  Created by Mohamed Salah on 15/08/2024.
//

import SwiftUI

@main
struct FoodPinApp: App {
  var body: some Scene {
    WindowGroup {
      RestaurantListView()
    }
  }

  init() {
    let navBarAppearance = UINavigationBarAppearance()
    navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor
      .systemRed, .font: UIFont(name: "ArialRoundedMTBold", size: 35)!]
    navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.systemRed,
                                            .font: UIFont(name: "ArialRoundedMTBold", size: 20)!]
    navBarAppearance.backgroundColor = .clear
    navBarAppearance.backgroundEffect = .none
    navBarAppearance.shadowColor = .clear
    UINavigationBar.appearance().standardAppearance = navBarAppearance
    UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
    UINavigationBar.appearance().compactAppearance = navBarAppearance
  }
}
