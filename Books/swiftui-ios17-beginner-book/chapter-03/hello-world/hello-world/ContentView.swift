//
//  ContentView.swift
//  hello-world
//
//  Created by Mohamed Salah on 10/08/2024.
//

import AVFoundation
import SwiftUI

struct ContentView: View {
    let synthesizer = AVSpeechSynthesizer()

    func speak(_ phase: String) {
        var utterance = AVSpeechUtterance(string: phase)

        utterance.voice = AVSpeechSynthesisVoice(identifier: "com.apple.speech.synthesis.voice.Fred")

        synthesizer.speak(utterance)
    }

    var body: some View {
        VStack {
            Button {
                speak("Hello Programming")
            } label: {
                Text("Hello Programming")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            .padding()
            .foregroundStyle(.white)
            .background(.purple)
            .clipShape(RoundedRectangle(cornerRadius: 12.0))

            Button {
                speak("Hello World")

            } label: {
                Text("Hello World")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            .padding()
            .foregroundStyle(.white)
            .background(.yellow)
            .clipShape(RoundedRectangle(cornerRadius: 12.0))
        }
    }
}

#Preview {
    ContentView()
}
