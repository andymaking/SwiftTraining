//
//  ClassThree.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 27/05/2023.
//
// COLORS

import SwiftUI

struct ClassThree: View {
    var body: some View {
        ZStack {
            Color("Secondary").ignoresSafeArea()
            Color(red: 48 / 255, green: 60 / 255, blue: 255 / 255)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        } 
    }
}

struct ClassThree_Previews: PreviewProvider {
    static var previews: some View {
        ClassThree().preferredColorScheme(.light)
    }
}
