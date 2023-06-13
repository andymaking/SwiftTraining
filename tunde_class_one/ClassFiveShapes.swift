//
//  ClassFiveShapes.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 29/05/2023.
//

import SwiftUI

struct ClassFiveShapes: View {
    var body: some View {
        VStack {
            Capsule(
                style: .circular
            ).fill(.green).frame(width: 100, height: 50)
            
            Capsule(
                style: .continuous
            ).frame(width: 100, height: 50)
            
            Circle().frame(width: 50, height: 50)
            
            Ellipse().frame(width: 50, height: 25)
            
            Rectangle().frame(width: 50, height: 50).cornerRadius(10)
            
            RoundedRectangle(cornerRadius: 5).frame(width: 50, height: 50)
            
            Image("pirate").resizable().frame(width: 100, height: 100).clipShape(RoundedRectangle(cornerRadius: 20))
            
        }
    }
}

struct ClassFiveShapes_Previews: PreviewProvider {
    static var previews: some View {
        ClassFiveShapes()
    }
}
