//
//  ClassFourGradient.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 29/05/2023.
//

import SwiftUI

struct ClassFourGradient: View {
    var body: some View {
        ZStack {
//            LinearGradient(gradient: Gradient(colors: [.white,.green, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
//            LinearGradient(stops: ([.init(color: .black, location: 0.1), .init(color: .mint, location: 0.8)]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
//            RadialGradient(colors: [.blue, .mint, .black, .purple], center: .topLeading, startRadius: 50, endRadius: 100).ignoresSafeArea()
            
//            AngularGradient(colors: [.red, .orange, .yellow, .blue, .green, .indigo, .purple], center: .center, angle: .degrees(90)).ignoresSafeArea()
            
            Button {
                
            } label: {
                
                AngularGradient(colors: [.red, .orange, .yellow, .blue, .green, .indigo, .purple], center: .center, angle: .degrees(90)).mask {
                    Text("HELLO USER")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
    
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).padding().background(
//                    LinearGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .blue, .green, .indigo, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                ).foregroundColor(.white)
            }

        }
    }
}

struct ClassFourGradient_Previews: PreviewProvider {
    static var previews: some View {
        ClassFourGradient()
    }
}
