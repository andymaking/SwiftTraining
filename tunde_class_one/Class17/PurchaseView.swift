//
//  PurchaseView.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 10/06/2023.
//

import SwiftUI

struct PurchaseView: View {
    
    @EnvironmentObject var purchaseVm : PurchaseViewModel
    
    var body: some View {
        if purchaseVm.isLoading {
            ProgressView()
        } else {
            Button {
                purchaseVm.purchase()
            } label: {
                Text("Purchase Me")
            }.disabled(purchaseVm.hasPurchased).opacity(purchaseVm.hasPurchased ? 0.5 : 1)
        }

    }
}

struct PurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseView()
    }
}
