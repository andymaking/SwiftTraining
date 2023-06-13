//
//  Class22ColorPicker.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 13/06/2023.
//

import SwiftUI

struct Class22ColorPicker: View {
    
    @State private var color :Color = .clear
    
    var body: some View {
        VStack {
            Image("pirate").resizable().clipShape(Circle()).frame(width: 200, height: 200).padding().background(color)
            
            ColorPicker(selection: $color, supportsOpacity: false){
                Label("Color Picker", systemImage: "paintpalette.fill").padding(.leading, 8)
            }.padding(.trailing, 8)
        }
    }
}

struct Class22ColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        Class22ColorPicker()
    }
}
