//
//  ScreenOne.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 19/06/2023.
//

import SwiftUI

struct ScreenOne: View {
    
    @EnvironmentObject var router : TabRouter
    
    var body: some View {
        ZStack {
            Text("Screen One").bold().foregroundColor(.white)
            
            Button {
                router.change(to: .two)
            } label: {
                Text("Change to Screen Two")
            }.padding().background(.ultraThickMaterial)

        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.mint).clipped()
    }
}

struct ScreenOne_Previews: PreviewProvider {
    static var previews: some View {
        ScreenOne().environmentObject(TabRouter())
    }
}
