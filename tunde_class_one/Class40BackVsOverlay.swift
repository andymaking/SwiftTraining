//
//  Class40BackVsOverlay.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 20/06/2023.
//

import SwiftUI

struct Class40BackVsOverlay: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("5")
                    .font(.footnote.weight(.bold))
                    .padding()
                    .background(.yellow)
                
                Text("5")
                    .font(.footnote.weight(.bold))
                    .padding()
                    .background {
                        Image(systemName: "star.fill").foregroundColor(.white).font(.system(size: 33)).offset(y: -2)
                    }
                    .background(.teal)
                
                Text("5")
                    .font(.footnote.weight(.bold))
                    .padding()
                    .background {
                        
                        Circle().fill(.yellow.opacity(0.3))
                        
                        Image(systemName: "star.fill").foregroundColor(.yellow).font(.system(size: 33)).offset(y: -2)
                    }
                
                Text("5")
                    .font(.footnote.weight(.bold))
                    .padding()
                    .background(alignment: .bottom) {
                        
                        Image(systemName: "star.fill").foregroundColor(.yellow).font(.system(size: 33))
                    }
                
                Image("pirate")
                    .resizable()
                    .frame(width: 100, height: 100).padding(50)
                    .background(Circle().fill(.blue))
                    .overlay(alignment: .bottom) {
                        Text("Subscribe")
                            .font(.footnote.weight(.bold))
                            .foregroundColor(.white)
                            .padding(4)
                            .background(Capsule().fill(.black))
                    }
                
                Image("pirate")
                    .resizable()
                    .frame(width: 100, height: 100).padding(30)
                    .background(Circle().fill(.blue))
                    .overlay(alignment: .bottom) {
                        Text("Subscribe")
                            .font(.footnote.weight(.bold))
                            .foregroundColor(.white)
                            .padding(4)
                            .background(.ultraThinMaterial, in: Capsule())
                    }
                
            }
        }
    }
}

struct Class40BackVsOverlay_Previews: PreviewProvider {
    static var previews: some View {
        Class40BackVsOverlay()
    }
}
