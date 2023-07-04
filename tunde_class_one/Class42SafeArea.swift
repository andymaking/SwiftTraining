//
//  Class42SafeArea.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 22/06/2023.
//

import SwiftUI

struct Class42SafeArea: View {
    
    private var gradient : [Color]  {
        [.blue, .red]
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                backgroundView
                
                ScrollView {
                    Text("Content").bold().font(.largeTitle)
                    TextField("Some Textfield", text: .constant(""))
                    
                    ForEach(0...15, id: \.self) { item in
                        Text("\(item)")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 8))
                    }
                }
                    .foregroundColor(.white)
                    .padding()
                    .textFieldStyle(.roundedBorder)
//                Text("Content").bold().font(.largeTitle).foregroundColor(.white)
            }
            .navigationTitle("Home")
        }
    }
}

struct Class42SafeArea_Previews: PreviewProvider {
    static var previews: some View {
        Class42SafeArea()
    }
}

private extension Class42SafeArea {
    
    var backgroundView : some View {
        LinearGradient(colors: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea()
//            .ignoresSafeArea(.container, edges: [.bottom])
    }
    
}
