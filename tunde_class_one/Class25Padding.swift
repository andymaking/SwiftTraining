//
//  Class25Padding.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 14/06/2023.
//

import SwiftUI

struct Class25Padding: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).padding().border(.red, width: 2).padding().border(.brown)
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).padding(4).border(.brown, width: 2)
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).padding(.leading, 16).padding(.trailing, 16).border(.brown, width: 2)
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).padding(.horizontal, 16).border(.blue, width: 2)
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).padding(.vertical, 16).border(.blue, width: 2)
            
            VStack {
                Image("launch_logo").resizable().frame(width: 100, height: 100).clipShape(Circle()).padding(.bottom, 39).border(.red, width: 1)
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book").frame(maxWidth: 200).foregroundColor(.white).border(.red, width: 1)
            }.padding().background(.gray.opacity(0.8)).clipShape(RoundedRectangle(cornerRadius: 8)).border(.red, width: 2)
        }
    }
}

struct Class25Padding_Previews: PreviewProvider {
    static var previews: some View {
        Class25Padding()
    }
}
