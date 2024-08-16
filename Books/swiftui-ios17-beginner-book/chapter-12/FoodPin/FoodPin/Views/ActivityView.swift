//
//  ContentView.swift
//  FoodPin
//
//  Created by Mohamed Salah on 15/08/2024.
//

import SwiftUI

struct ActivityView: UIViewControllerRepresentable {
  var activityItems: [Any]
  var applicationActivities: [UIActivity]? = nil

  func makeUIViewController(context: Context) -> some UIViewController {
    let activityController = UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
    return activityController
  }

  func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}
