//
//  ParkingLotView.swift
//  ParkLens-AI
//
//  Created by Oleksandr Voievodin on 1/23/25.
//

import AVKit
import SwiftUI

struct ParkingLotView: View {
    let lotNumber: Int
    @State private var player: AVPlayer?
    @Environment(\.dismiss) private var dismiss
    
    var streamURL: URL {
        switch lotNumber {
        case 1:
            return URL(string: "http://localhost:8080/hls/stream.m3u8")!
        case 2:
            return URL(string: "http://192.168.1.8:8080/hls/stream2.m3u8")! // change later
        case 3:
            return URL(string: "http://192.168.1.8:8080/hls/stream3.m3u8")! // change later
        case 4:
            return URL(string: "http://192.168.1.8:8080/hls/stream4.m3u8")! // change later
        default:
            return URL(string: "http://192.168.1.8:8080/hls/stream1.m3u8")! // change later
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                if let player = player {
                    VideoPlayer(player: player)
                        .onAppear {
                            player.play()
                        }
                        .onDisappear {
                            player.pause()
                        }
                        .edgesIgnoringSafeArea(.all)
                        .frame(maxWidth: .infinity, maxHeight: 300)
                } else {
                    Text("Loading video...")
                }
            }
            .navigationTitle(Text("Parking Lot \(lotNumber)"))
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        HStack {
                            Image(systemName: "arrow.left.circle")
                            Text("Back")
                                .fontWeight(.bold)
                        }
                    }
                }
            }
            .onAppear {
                player = AVPlayer(url: streamURL)
            }
        }
    }
}


#Preview {
    ParkingLotView(lotNumber: 1)
}
