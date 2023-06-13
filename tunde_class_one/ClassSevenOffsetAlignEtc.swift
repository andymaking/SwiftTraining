//
//  ClassSevenOffsetAlignEtc.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 29/05/2023.
//

import SwiftUI

struct ClassSevenOffsetAlignEtc: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).padding().frame(width: 200, height: 250, alignment: .bottomTrailing).background(.mint)
//        VStack{
//            Text("Hello Guys").foregroundColor(.white)
//            Text("Hello Guys").foregroundColor(.white)
//            Text("Hello Guys").foregroundColor(.white)
//            Text("Hello Guys").foregroundColor(.white)
//            Text("Hello Guys").foregroundColor(.white)
//            Text("Hello Guys").foregroundColor(.white)
//            Text("Hello Guys").foregroundColor(.white)
//            Text("Hello Guys").foregroundColor(.white)
//        }.padding().frame(maxWidth: .infinity, minHeight: 100, alignment: .topLeading).background(.mint).clipped()
        
        Image("pirate").resizable().frame(width: 100, height: 100).clipShape(Circle()).overlay(alignment: .bottom) {
            Text("New Video").foregroundColor(.white).bold().font(.callout).padding(.vertical, 5).padding(.horizontal, 8).background(.red).clipShape(Capsule()).offset(x: 25, y: 10)
        }
        
    }
}

struct ClassSevenOffsetAlignEtc_Previews: PreviewProvider {
    static var previews: some View {
        ClassSevenOffsetAlignEtc()
    }
}
