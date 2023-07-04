//
//  Class38GroupBox.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 20/06/2023.
//

import SwiftUI

struct Class38GroupBox: View {
    var body: some View {
        VStack{
            
            GroupBox("Saved Items") {
                Text("You have 5 items left")
            }
            
            GroupBox {
                Text("You have 9 items left")
            } label: {
                 Label("Nice Touch", systemImage: "star.fill" )
            }
            
            GroupBox {
                Text("You have 9 items left")
            } label: {
                 Label("Nice Touch", systemImage: "star.fill" )
            }.groupBoxStyle(.savedStyle)
            
        }.padding(.horizontal)
    }
}

struct Class38GroupBox_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Class38GroupBox()
            Class38GroupBox()
                .preferredColorScheme(.dark)
        }
    }
}
