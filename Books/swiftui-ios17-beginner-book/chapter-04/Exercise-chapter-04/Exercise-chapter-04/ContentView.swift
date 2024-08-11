//
//  ContentView.swift
//  Exercise-chapter-04
//
//  Created by Mohamed Salah on 11/08/2024.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var body: some View {
        VStack {
            VStack {
                Text("Instant Developer")
                    .fontWeight(.medium)
                    .font(.system(size: 40))

                Text("Get help from experts in 15 minutes")

                HStack(alignment: .bottom, spacing: 20) {
                    Image("student")
                    Image("tutor")
                }

                Text("Need help with coding problems? Register!")
            }
            .foregroundStyle(.white)
            .padding()

            Spacer()

            if verticalSizeClass == .compact {
                HButtons()
            } else {
                VButtons()
            }
        }
        .background {
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        }
    }
}

struct VButtons: View {
    var body: some View {
        VStack {
            Button {} label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .background(.purple)
            .clipShape(RoundedRectangle(cornerRadius: 10))

            Button {} label: {
                Text("Log In")
            }.frame(width: 200)
                .padding()
                .background(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .foregroundStyle(.white)
    }
}

struct HButtons: View {
    var body: some View {
        HStack {
            Button {} label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .background(.purple)
            .clipShape(RoundedRectangle(cornerRadius: 10))

            Button {} label: {
                Text("Log In")
            }.frame(width: 200)
                .padding()
                .background(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}
