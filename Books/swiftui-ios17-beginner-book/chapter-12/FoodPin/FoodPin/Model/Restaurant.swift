//
//  Restaurant.swift
//  FoodPin
//
//  Created by Mohamed Salah on 15/08/2024.
//

import Foundation

struct Restaurant {
  var name: String
  var type: String
  var location: String

  var image: String
  var isFavorite: Bool
  var phone: String
  var description: String
  init(name: String, type: String, location: String, image: String, isFavorite: Bool = false, phone: String, description: String) {
    self.name = name
    self.type = type
    self.location = location
    self.phone = phone
    self.description = description
    self.image = image
    self.isFavorite = isFavorite
  }

  init() {
    self.init(name: "", type: "", location: "", image: "", isFavorite: false, phone: "", description:
      "")
  }
}
