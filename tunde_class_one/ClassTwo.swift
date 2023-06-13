//
//  ClassTwo.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 27/05/2023.
//

import SwiftUI

struct ClassTwo: View {
    var body: some View {
        
        VStack {
            VStack {
                Image(systemName: "cloud.sun.rain.fill")
                    .symbolRenderingMode(.multicolor)
                
                Image(systemName: "cloud.sun.fill")
                    .symbolRenderingMode(.monochrome)
                    .foregroundColor(.red)
                
                Image(systemName: "cloud.sun.fill")
                    .symbolRenderingMode(.hierarchical)
                
                Image(systemName: "cloud.sun.fill")
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.red, .blue)
                
            }.padding().font(.system(size: 40, weight: .bold)).background(.gray)
            
            
            Image("logo").resizable().frame(width: 200, height: 100)
        }
        
    }
}

struct ClassTwo_Previews: PreviewProvider {
    static var previews: some View {
        ClassTwo()
    }
}
