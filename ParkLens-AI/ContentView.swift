//
//  ContentView.swift
//  Parking Lot Detector AI Prototype
//
//  Created by Opinionated Goats on 7/22/24.
//

import SwiftUI
import PhotosUI
import AVKit

struct ContentView: View {
    @State private var isPickerPresented = false
    @State private var selectedImage: UIImage?
    @State private var selectedVideoURL: URL?
    
    var body: some View {
        VStack {
            if let image = selectedImage {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
            } else if let videoURL = selectedVideoURL {
                VideoPlayer(player: AVPlayer(url: videoURL))
                    .frame(width: 300, height: 300)
            }
            
            Button(action: {
                isPickerPresented = true
            }) {
                Text("Select Photo/Video")
            }
            .padding()
            .sheet(isPresented: $isPickerPresented) {
                MediaPicker(isPresented: $isPickerPresented, selectedImage: $selectedImage, selectedVideoURL: $selectedVideoURL)
            }
        }
    }
}

#Preview {
    ContentView()
}
