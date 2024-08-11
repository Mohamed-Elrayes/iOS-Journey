//
//  ContentView.swift
//  StackViewDemo
//
//  Created by Mohamed Salah on 10/08/2024.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass

    var body: some View {
        VStack(spacing: 20) {
            VStack {
                Text("Instant Developer")
                    .fontWeight(.medium)
                    .font(.system(size: 40))
                    .foregroundStyle(.indigo)

                Text("Get help from experts in 15 minutes")
            }

            HStack(alignment: .bottom, spacing: 10) {
                Image("user1").resizable()

                Image("user2").resizable()

                Image("user3").resizable()
            }
            .scaledToFit()
            .padding(.horizontal, 20)

            Text("Need help with coding problems? Register!")

            Spacer()

            if verticalSizeClass == .compact {
                HSignUpButtonGroup()
            } else {
                VSignUpButtonGroup()
            }
        }
        .padding(.top, 30)
    }
}

struct VSignUpButtonGroup: View {
    var body: some View {
        VStack {
            Button {} label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.indigo)
            .clipShape(RoundedRectangle(cornerRadius: 10))

            Button {} label: {
                Text("Log In")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.gray)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

struct HSignUpButtonGroup: View {
    var body: some View {
        HStack {
            Button {} label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.indigo)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            Button {} label: {
                Text("Log In")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.gray)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview("ContentView (Landscape)", traits: .landscapeLeft) {
    ContentView()
}
