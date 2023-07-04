//
//  GroupBox+SavedStyle.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 20/06/2023.
//

import Foundation
import SwiftUI

struct GroupBoxSavedStyle : GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            configuration.label.bold()
            configuration.content
        }.padding(16).frame(maxWidth: .infinity, alignment: .leading).background(.thickMaterial, in: RoundedRectangle(cornerRadius: 8))
    }
}

extension GroupBoxStyle where Self == GroupBoxSavedStyle {
    static var savedStyle: GroupBoxSavedStyle { .init() }
}
