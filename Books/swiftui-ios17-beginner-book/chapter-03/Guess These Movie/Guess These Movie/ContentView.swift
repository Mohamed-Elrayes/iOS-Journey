//
//  ContentView.swift
//  Guess These Movie
//
//  Created by Mohamed Salah on 10/08/2024.
//

import AVFoundation
import SwiftUI

struct ContentView: View {
    let synthesizer = AVSpeechSynthesizer()

    func speak(text: String) {
        let utterance = AVSpeechUtterance(string: text)

        utterance.voice = AVSpeechSynthesisVoice(identifier: "com.apple.speech.synthesis.voice.Fred")

        synthesizer.speak(utterance)
    }

    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/) {
            Text("Guess these Movies app")
                .fontWeight(/*@START_MENU_TOKEN@*/ .bold/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
            Text("Can you guess these movies from emojis?")
            Text("Tap button to find out the answer")
            Group {
                btn(name: "🌊1️⃣1️⃣", speakText: "Ocean 11!").background(.blue)
                btn(name: "🐉🏠", speakText: "Dragon house").background(.yellow)
                btn(name: "💡", speakText: "The Light").background(.red)
            }
            .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .padding()
    }

    func btn(name: String, speakText: String) -> some View {
        Button(action: {
            speak(text: speakText)
        }, label: {
            Text(name)
                .font(.largeTitle)
                .padding()

        })
    }
}

#Preview {
    ContentView()
}
