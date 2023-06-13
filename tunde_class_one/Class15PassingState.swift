//
//  Class15PassingState.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 01/06/2023.
//

import SwiftUI

struct Class15PassingState: View {
    
    @State private var isLoading: Bool = false
    
    var body: some View {
        
        VStack {
            CostomLoadingView(isLoading: $isLoading)
            Button {
                isLoading.toggle()
                print(isLoading)
            } label: {
                Text("\(isLoading ? "Stop" : "Start") Loading")
                
            }
        }

        
    }
}

struct Class15PassingState_Previews: PreviewProvider {
    static var previews: some View {
        Class15PassingState()
    }
}
