//
//  PurchaseStatusView.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 13/06/2023.
//

import SwiftUI

struct PurchaseStatusView: View {
    @EnvironmentObject var purchaseVm : PurchaseViewModel
    
    var body: some View {
        VStack{
            Image(systemName: !purchaseVm.hasPurchased ? "lock.fill" : "lock.open.fill").font(.system(size: 50, weight: .bold))
            
            Text("The User \(!purchaseVm.hasPurchased ? "hasn't" : "has") unlocked this feature")
        }
    }
}

struct PurchaseStatusView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseStatusView().environmentObject(PurchaseViewModel())
    }
}
