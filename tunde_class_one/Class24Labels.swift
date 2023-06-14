//
//  Class24Labels.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 14/06/2023.
//

import SwiftUI

struct Class24Labels: View {
    var body: some View {
        VStack {
            Label("Pick A Colour", systemImage: "paintpalette")
            
            Link(destination: .init(string: "youtube.com")!) {
                Label {
                    Text("Subscribe to the channel").bold()
                    .foregroundColor(.white).padding().background(.red).clipShape(Capsule())
                } icon: {
                    Image("pirate").resizable().frame(width: 70, height: 70).clipShape(Circle())
                }
            }
            
            Label("Pick A Colour", image: "launch_logo").labelStyle(CapsuleStyle())
            
            Label("Pick A Colour", image: "").labelStyle(StrongCapsuleStyle(color: .mint, image: "launch_logo"))
            
            Label("Pick A Colour", image: "launch_logo").labelStyle(.capsule)
            
            Label("Pick A Colour", image: "").labelStyle(.strongCapsule(color: .brown))
            
            Label("Pick A Colour", image: "").labelStyle(.strongCapsule(color: .brown)).labelStyle(.iconOnly)
            
            Label("Pick A Colour", image: "").labelStyle(.strongCapsule(color: .brown)).labelStyle(.titleOnly)
            
            Label("Pick A Colour", image: "").labelStyle(.strongCapsule(color: .brown)).labelStyle(.automatic)
        }
    }
}

struct Class24Labels_Previews: PreviewProvider {
    static var previews: some View {
        Class24Labels()
    }
}
