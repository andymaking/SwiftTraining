//
//  LoginView.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 13/06/2023.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var vm: LoginViewModel
    
//    @Binding var user : User
//    let didTap: () -> Void
    
    var body: some View {
        VStack {
            TextField("Username", text: $vm.user.username, prompt: Text("Username?"))
            SecureField("Password", text: $vm.user.password, prompt: Text("Password"))
            Button{
//                vm.didTap()
                vm.login()
            } label: {
                Text("Login")
            }
        }.padding(.horizontal, 8).textFieldStyle(.roundedBorder).onChange(of: vm.user) { newValue in
            print("The User imputted: \(newValue)")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(vm: .init())
//        LoginView(user: .constant(.init()), didTap: {})
    }
}
