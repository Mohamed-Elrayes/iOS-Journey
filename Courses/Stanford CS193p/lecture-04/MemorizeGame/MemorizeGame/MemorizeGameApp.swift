//
//  MemorizeGameApp.swift
//  MemorizeGame
//
//  Created by Mohamed Salah on 20/08/2024.
//

import SwiftUI

@main
struct MemorizeGameApp: App {
  @StateObject var game = EmojiMemoryGame()
  var body: some Scene {
    WindowGroup {
      EmojiMemoryGameView(viewModle: game)
    }
  }
}
