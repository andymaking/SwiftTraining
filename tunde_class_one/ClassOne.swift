//
//  ClassOne.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 27/05/2023.
//

import SwiftUI

struct ClassOne: View {
    
    @State private var isOpen = false
    
    @State private var isMessagge = false
    
    var body: some View {
        
        VStack {
            
            ViewDependenciesArrow(isOpen: $isOpen).padding()
            
            ViewDependenciesMessage(isMessagge: $isMessagge).padding()
            
            Button(action: {
                withAnimation {
                    isOpen.toggle()
                    isMessagge.toggle()
                }
            }, label: {
                Text("Toogle View")
            })
            
        }
        .padding()
    }
}

struct ViewDependenciesArrow : View{
    @Binding var isOpen: Bool
    
    var body: some View {
        Image(systemName: "arrow.down")
            .rotationEffect(.init(degrees: isOpen ? 0 : -180))
    }
}

struct ViewDependenciesMessage : View{
    @Binding var isMessagge: Bool
    
    var body: some View {
        
        if isMessagge {
            Text("I hope you are enjoying the view")
                .onAppear{
                    print("Added View to Screen")
                }
                .onDisappear{
                    print("Removed View from Screen")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                ClassOne().navigationTitle("Class One")
            }
            
            NavigationView {
                ClassOne().navigationTitle("Class One")
            }.preferredColorScheme(.dark)
        }
    }
}
