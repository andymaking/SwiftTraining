//
//  Button+SendStyle.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 19/06/2023.
//

import Foundation
import SwiftUI

struct SendButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: "paperplane.fill")
            Divider().padding(.vertical, 8).padding(.horizontal, 8)
            configuration.label
        }.padding(.horizontal).frame(minHeight: 55).background(.mint).foregroundColor(.white).clipShape(RoundedRectangle(cornerRadius: 8)).opacity(configuration.isPressed ? 0.5 : 1)
    }
}

extension ButtonStyle where Self == SendButtonStyle {
    static var sendButton: SendButtonStyle { .init() }
}
