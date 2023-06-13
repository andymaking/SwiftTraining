//
//  LoggedInView.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 13/06/2023.
//

import SwiftUI

struct LoggedInView: View {
    @ObservedObject var vm: LoginViewModel
    
    var body: some View {
        VStack {
            Text("Hey, you are now logged in")
            Button {
                vm.logout()
            } label: {
                Text("Logout")
            }
        }
    }
}

struct LoggedInView_Previews: PreviewProvider {
    static var previews: some View {
        LoggedInView(vm: .init())
    }
}
