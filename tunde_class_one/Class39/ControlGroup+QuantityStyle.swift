//
//  ControlGroup+QuantityStyle.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 20/06/2023.
//

import Foundation
import SwiftUI

struct ControlGroupQuantityStyle : ControlGroupStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            Label("Quantity", systemImage: "bag").font(.body.weight(.bold))
            HStack {
                configuration.content
            }
        }
    }
}

extension ControlGroupStyle where Self == ControlGroupQuantityStyle {
    static var quantity: ControlGroupQuantityStyle { .init() }
}
