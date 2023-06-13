//
//  PurchaseStateView.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 10/06/2023.
//

import SwiftUI

struct PurchaseStateView: View {
    
    @EnvironmentObject var purchaseVm : PurchaseViewModel
    
    var body: some View {
        PurchaseStatusView()
    }
}

struct PurchaseStateView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseStateView().environmentObject(PurchaseViewModel())
    }
}
