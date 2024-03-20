//
// vision_volume_demo
// Created by: onee on 2024/3/20
//

import SwiftUI
import RealityKit
import RealityKitContent
import RealityBounds

struct VolumeView: View {
    var body: some View {
        GeometryReader3D { geo in
            RealityView { content in
                    // Add the initial RealityKit content
                if let scene = try? await Entity(named: "Immersive", in: realityKitContentBundle) {
                    content.add(scene)
                }
                content.add(BoundsVisualizer(bounds: [1.28, 1.28, 1.28], size: 0.1))
                let rect = content.convert(geo.frame(in: .local), from: .local, to: .scene)
                print("size is \(rect)")
                print("ength is \(rect.max.x - rect.min.x)")
            }
        }
    }
}

#Preview(immersionStyle: .mixed) {
    VolumeView()
}
