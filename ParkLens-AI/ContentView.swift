//
//  ContentView.swift
//  Parking Lot Detector AI Prototype
//
//  Created by Opinionated Goats on 7/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 80) {
                ForEach(1...4, id: \.self) { lot in
                    NavigationLink(destination: ParkingLotView(lotNumber: lot)) {
                        Text("Parking Lot \(lot)")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: 300)
                            .background(.blue)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 5, x: 0, y: 5)
                    }
                }
            }
            .padding()
            .navigationTitle("Select Parking Lot")
        }
    }
}

#Preview {
    ContentView()
}
