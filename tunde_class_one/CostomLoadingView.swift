//
//  CostomLoadingView.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 01/06/2023.
//

import SwiftUI

struct CostomLoadingView: View {
    
    @Binding var isLoading: Bool
    
    var body: some View {
        
        if isLoading {
            ProgressView()
        } else {
            Text("Finished loading")
        }
        
    }
}

struct CostomLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CostomLoadingView(isLoading: .constant(true))
            CostomLoadingView(isLoading: .constant(false))
        }
    }
}
