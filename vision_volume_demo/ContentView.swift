//
// vision_volume_demo
// Created by: onee on 2024/3/20
//

import RealityKit
import RealityKitContent
import SwiftUI

struct ContentView: View {
    @State private var showVolume = false
    @State private var volumeIsShown = false

    @Environment(\.openWindow) var openWindow
    @Environment(\.dismissWindow) var dismissWindow

    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)

            Text("Hello, world!")

            Toggle("Show Volume", isOn: $showVolume)
                .font(.title)
                .frame(width: 360)
                .padding(24)
                .glassBackgroundEffect()
        }
        .padding()
        .onChange(of: showVolume) { _, newValue in
            if newValue {
                openWindow(id: "Volume")
                volumeIsShown = true
            } else if volumeIsShown {
                dismissWindow(id: "Volume")
                volumeIsShown = false
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
