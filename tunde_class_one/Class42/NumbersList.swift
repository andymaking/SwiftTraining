//
//  NumbersList.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 26/06/2023.
//

import SwiftUI

struct NumbersList: View {
    var body: some View {
        NavigationView {
            List(0..<20){ i in
                Text("Number \(i)")
            }
            .navigationTitle("Numbers")
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: 100) {
                plusBtn.padding(.trailing)
            }
            .safeAreaInset(edge: .leading, alignment: .top, spacing: 0) {
                sideBar
            }
        }
    }
}

struct NumbersList_Previews: PreviewProvider {
    static var previews: some View {
        NumbersList()
    }
}


private extension NumbersList {
    
    var plusBtn : some View {
        Button {
            
        } label: {
            Image(systemName: "plus.circle.fill").font(.system(size: 44, weight: .bold, design: .rounded))
        }
    }
    
    var sideBar : some View {
        VStack (alignment: .leading) {
            ForEach([
                "Home", "Features", "My Profile", "Settings"
            ], id: \.self){ item in
                Text("\(item)").bold().padding()
            }
        }
    }
    
}
