//
//  Class17EnviromentObject.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 10/06/2023.
//

import SwiftUI

struct Class17EnviromentObject: View {
    
    @StateObject private var vm = PurchaseViewModel()
    
    var body: some View {
        TabView {
            PurchaseView().environmentObject(vm).tabItem {
                Image(systemName: "creditcard")
                Text("Purchase")
            }
            PurchaseStateView().environmentObject(vm).tabItem {
                Image(systemName: "gear")
                Text("State")
            }
        }
    }
}

struct Class17EnviromentObject_Previews: PreviewProvider {
    static var previews: some View {
        Class17EnviromentObject()
    }
}
