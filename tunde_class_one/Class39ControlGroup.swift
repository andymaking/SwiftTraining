//
//  Class39ControlGroup.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 20/06/2023.
//

import SwiftUI

struct Class39ControlGroup: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Quantity")
                ControlGroup{
                    increaseBtn
                    decreaseBtn
                }
            }
            VStack {
                Text("Quantity")
                ControlGroup{
                    increaseBtn
                    decreaseBtn
                }.controlGroupStyle(.navigation)
            }
            
            ControlGroup{
                increaseBtn
                decreaseBtn
            }.controlGroupStyle(.quantity)
            
        }.padding()
    }
}

struct Class39ControlGroup_Previews: PreviewProvider {
    static var previews: some View {
        Class39ControlGroup()
    }
}

private extension Class39ControlGroup {
    var increaseBtn : some View {
        Button {
            withAnimation {
            }
        } label: {
             Label("Increase", systemImage: "plus")
        }
    }
    
    var decreaseBtn : some View {
        Button {
            withAnimation {
                
            }
        } label: {
            Label("Decrease", systemImage: "minus")
        }
    }
}
