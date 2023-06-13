//
//  Content18.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 13/06/2023.
//

import SwiftUI

struct Content18: View {
    
    @StateObject private var vm = LoginViewModel()
    
    var body: some View {
//        switch vm.currentState {
//        case .loading: ProgressView()
//        case .notLoggedIn: LoginView(user: $vm.user, didTap: vm.login)
//        case .loggedIn: LoggedInView(didTap: vm.logout)
//        }
        
        switch vm.currentState {
        case .loading: ProgressView()
        case .notLoggedIn: LoginView(vm: vm)
        case .loggedIn: LoggedInView(vm: vm)
        }
        
        
//        if vm.isLoading {
//            ProgressView()
//        } else {
//            if vm.isLoggedIn {
//                LoggedInView()
//            } else {
//                LoginView(user: $vm.user, didTap: vm.login)
//            }
//        }
    }
}

struct Content18_Previews: PreviewProvider {
    static var previews: some View {
        Content18().environmentObject(LoginViewModel())
    }
}
