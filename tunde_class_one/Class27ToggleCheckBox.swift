//
//  Class27ToggleCheckBox.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 17/06/2023.
//

import SwiftUI

struct Class27ToggleCheckBox: View {
    @State private var isSelected: Bool = false
    @State private var isSelectedTwo: Bool = false
    var body: some View {
        VStack {
            Group {
                Toggle("Turn me \(isSelected ? "off" : "on")", isOn: $isSelected)
                Text(isSelected ? "I am turned on" : "I am turned Off")
            }
            
            Group {
                HStack {
                    Toggle("", isOn: $isSelectedTwo).labelsHidden()
                    Text(isSelectedTwo ? "I am turned on" : "I am turned off")
                }
            }
            Group {
                Toggle(isOn: $isSelectedTwo){
                    Label("Is \(isSelectedTwo ? "On" : "Off")", systemImage: isSelectedTwo ?  "lightbulb.fill" : "lightbulb")
                }.toggleStyle(.button)
            }
            Group {
                Toggle("", isOn: $isSelectedTwo).labelsHidden().toggleStyle(.checkBox).font(.title)
            }
        }
    }
}

struct Class27ToggleCheckBox_Previews: PreviewProvider {
    static var previews: some View {
        Class27ToggleCheckBox()
    }
}
