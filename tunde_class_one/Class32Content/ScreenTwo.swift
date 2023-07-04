//
//  ScreenTwo.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 19/06/2023.
//

import SwiftUI

struct ScreenTwo: View {
    @EnvironmentObject var router : TabRouter
    var body: some View {
        ZStack {
            Text("Screen Two").bold().foregroundColor(.white)
            
            Button {
                router.change(to: .one)
            } label: {
                Text("Change to Screen One")
            }.tint(.pink).padding().background(.ultraThickMaterial)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.pink).clipped()
    }
}

struct ScreenTwo_Previews: PreviewProvider {
    static var previews: some View {
        ScreenTwo().environmentObject(TabRouter())
    }
}
