# ParkLens

## Overview
ParkLens is a mobile application that utilizes computer vision techniques to recognize vacant parking spots by analyzing video footage of a parking lot.

## Features
- **Parking Spot Detection**: Accurately identifies empty and taken parking spots in real-time.
- **Live Streaming**: Streams processed video data to the iOS application via HLS.
- **RTMP Support**: Uses an RTMP protocol to capture and analyze live video from a real security IP camera.
- **Easy-to-use UI**: User-friendly UI that guides user to open parking spots seamlessly.


Note: If you are a contributor, I have made a Figma UI Prototype of the app that you can [view here](https://www.figma.com/design/FmZlqaQKi9CI1gL46kwe73/ParkLens-iOS-UI-Prototype?node-id=13-523)

## Architecture Overview

ParkLens operates through this pipeline:

- A live IP camera records video of the parking lot.

- The video feed is streamed via RTMP to a processing server (MacBook running OpenCV and YOLO for object detection).

- The processed footage, with detected parking spots, is sent via RTMP to an Nginx server.

- The Nginx server converts the stream to HLS format for viewing on the ParkLens iOS app.

## Getting Started

### Prerequisites
- iOS(17.2 or higher)
- Stable Wifi connection

### Installation

tbd...

## Usage

tbd...

