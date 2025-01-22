//
//  ContentView.swift
//  Parking Lot Detector AI Prototype
//
//  Created by Opinionated Goats on 7/22/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Button {
                print("Do some action")
            } label: {
                Text("Tap Me")
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: 300)
            .background(Color.teal)
            .cornerRadius(10)
            .shadow(color: .gray, radius: 5, x: 0, y: 5)
        }
    }
}

#Preview {
    ContentView()
}
