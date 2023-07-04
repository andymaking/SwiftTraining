//
//  Class34TextFields.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 20/06/2023.
//

import SwiftUI

struct Class34TextFields: View {
    
    struct User {
        var usename : String = ""
        var password : String = ""
    }
    
    @State private var user : User = .init()
    @FocusState private var inputFocused : Bool
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Login").padding(.bottom)
                usernameTxVw
                passwordTxVw
                submitBtn
                
            }.textFieldStyle(.roundedBorder)
                .disableAutocorrection(true)
                .textInputAutocapitalization(.none)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button(action: resignKeyboard) {
                            Text("Done")
                        }
                    }
                }
                .onSubmit(of: .text, submit)
        }
    }
}

struct Class34TextFields_Previews: PreviewProvider {
    static var previews: some View {
        Class34TextFields()
    }
}


private extension Class34TextFields {
    var usernameTxVw : some View {
        TextField("Username", text: $user.usename, prompt: Text("Username")).textContentType(.username).padding().focused($inputFocused)
    }
    
    var passwordTxVw : some View {
        SecureField("Password", text: $user.password, prompt: Text("Password")).textContentType(.password).padding(.horizontal).focused($inputFocused).submitLabel(.done)
    }
    
    var submitBtn : some View {
        Button (action: submit) {
            Text("Submit")
        }.buttonStyle(.borderedProminent).padding(.top)

    }
    
}

private extension Class34TextFields {
    func resignKeyboard() {
        if #available(iOS 15, *){
            inputFocused = false
        } else {
            dismissKeyboard()
        }
    }
    
    func submit(){
        resignKeyboard()
    
        print("The user inputed: \(user)")
    }
}

extension View {
    func dismissKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
