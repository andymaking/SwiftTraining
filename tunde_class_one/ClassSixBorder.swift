//
//  ClassSixBorder.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 29/05/2023.
//

import SwiftUI

struct ClassSixBorder: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).padding()
//            .overlay {
//                RoundedRectangle(cornerRadius: 8).stroke(.blue, lineWidth: 3)
//            }
        
        Circle().strokeBorder(
            AngularGradient(colors: [.red, .yellow, .yellow, .red], center: .center), lineWidth:  30).padding()
    }
}

struct ClassSixBorder_Previews: PreviewProvider {
    static var previews: some View {
        ClassSixBorder()
    }
}
