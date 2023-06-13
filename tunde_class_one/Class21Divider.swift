//
//  Class21Divider.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 13/06/2023.
//

import SwiftUI

struct Class21Divider: View {
    var body: some View {
        VStack {
            
            VStack {
                Text("1 Divider example")
                Divider().frame(width: 100)
            }.padding().background(.yellow)
            
            Group {
                Text("2. (Group) example")
                Divider()
            }.background(.mint)
            
            HStack {
                Text("3. (HStack) man")
                Divider().frame(height: 50).background(.red)
                Image(systemName: "lock")
            }
            
            
        }.padding()
    }
}

struct Class21Divider_Previews: PreviewProvider {
    static var previews: some View {
        Class21Divider()
    }
}
