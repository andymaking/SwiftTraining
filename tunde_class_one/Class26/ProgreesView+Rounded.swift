//
//  ProgreesView+Rounded.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 16/06/2023.
//

import SwiftUI
import Foundation

struct RoundedProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration).padding().background(.blue).clipShape(RoundedRectangle(cornerRadius: 8)).tint(.white).foregroundColor(.white)
    }
}

extension ProgressViewStyle where Self == RoundedProgressViewStyle {
    static var roundedProgress: RoundedProgressViewStyle { .init() }
}
