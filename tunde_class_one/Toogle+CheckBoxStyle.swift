//
//  Toogle+CheckBoxStyle.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 18/06/2023.
//

import Foundation
import SwiftUI

struct ToggleCheckBoxStyle : ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Image(systemName: configuration.isOn ? "checkmark.square.fill" : "checkmark.square")
        }.tint(.black)

    }
}

extension ToggleStyle where Self == ToggleCheckBoxStyle {
    static var checkBox: ToggleCheckBoxStyle { .init() }
}
