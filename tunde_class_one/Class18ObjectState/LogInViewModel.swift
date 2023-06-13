//
//  LogInViewModel.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 13/06/2023.
//

import Foundation

struct User: Equatable {
    var username: String = ""
    var password: String = ""
}


final class LoginViewModel: ObservableObject {
    
    enum CurrentState {
        case loading
        case notLoggedIn
        case loggedIn
    }
    
    @Published var user: User = .init()
    @Published var currentState: CurrentState = .notLoggedIn
//    @Published var isLoading: Bool = false
//    @Published var isLoggedIn: Bool = false
    
    func login() {
        guard !user.username.isEmpty && !user.password.isEmpty else {
            return
        }
        
        currentState = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [weak self] in
            self?.currentState = .loggedIn
            self?.user.password = ""
            self?.user.username = ""
        }
    }
    
    func logout () {
        self.currentState = .notLoggedIn
    }
 }
