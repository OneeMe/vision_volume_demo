//
// vision_volume_demo
// Created by: onee on 2024/3/20
//

import SwiftUI

@main
struct vision_volume_demoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        WindowGroup(id: "Volume") {
            VolumeView()
        }
        .windowStyle(.volumetric)
    }
}
