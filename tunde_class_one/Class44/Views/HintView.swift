//
//  HintView.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 04/07/2023.
//

import SwiftUI

struct HintView: View {
    
    var body: some View {
        
        Text("Pull me down to generate a new person")
            .multilineTextAlignment(.center)
            .allowsTightening(true)
            .font(.system(size: 16, weight: .bold))
            .padding()
    }
}

struct HintView_Previews: PreviewProvider {
    static var previews: some View {
        HintView()
    }
}
