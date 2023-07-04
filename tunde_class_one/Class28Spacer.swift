//
//  Class28Spacer.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 18/06/2023.
//

import SwiftUI

struct Class28Spacer: View {
    var body: some View {
        VStack {
            HStack {
                Text("Name").bold()
                Spacer()
                Text("Andima Udoh")
            }.background(.mint)
            HStack {
                Text("Name").bold().background(.blue)
                Text("Andima Udoh").background(.cyan)
            }.frame(maxWidth: .infinity, alignment: .leading).background(.yellow)
            
            HStack {
                Text("Name").bold().background(.green)
                Spacer(minLength: 50)
                Text("Andima Udoh").frame(maxWidth: .infinity, alignment: .leading).background(.red)
            }.frame(maxWidth: .infinity, alignment: .leading).background(.purple)
        }
    }
}

struct Class28Spacer_Previews: PreviewProvider {
    static var previews: some View {
        Class28Spacer()
    }
}
