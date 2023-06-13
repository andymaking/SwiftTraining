//
//  ClassEightState.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 31/05/2023.
//

import SwiftUI

struct ClassEightState: View {
    
    @State private var isOn: Bool = false
    
    var body: some View {
        
        VStack {
            Image(systemName: "lightbulb").font(.largeTitle).symbolVariant(isOn ? .fill : .none).foregroundColor(isOn ? .yellow : .black)
            
            Toggle(isOn: $isOn) {
                Text("Toggle Light Switch")
            }.labelsHidden()
        }
        
    }
}

struct ClassEightState_Previews: PreviewProvider {
    static var previews: some View {
        ClassEightState()
    }
}
