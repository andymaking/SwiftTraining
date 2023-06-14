//
//  Label+CapsuleStyle.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 14/06/2023.
//

import Foundation
import SwiftUI

struct CapsuleStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        Label(configuration).padding().background(.blue).clipShape(Capsule())
    }
}

extension LabelStyle where Self == CapsuleStyle {
    static var capsule: CapsuleStyle { .init() }
}

struct StrongCapsuleStyle : LabelStyle {
    let color: Color
    let image: String
    func makeBody(configuration: Configuration) -> some View {
        Label {
            configuration.title.foregroundColor(.white).font(.system(size: 15, weight: .bold))
        } icon: {
            Image(image).resizable().frame(width: 50, height: 50).clipShape(Circle())
        }.padding().background(color).clipShape(Capsule())
    }
}

extension LabelStyle where Self == StrongCapsuleStyle {
    static func strongCapsule(color: Color = .red, image: String = "launch_logo") -> StrongCapsuleStyle {.init(color: color, image: image)}
}
