//
//  Class16Observable.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 01/06/2023.
//

import SwiftUI

struct Class16Observable: View {
    
//    @StateObject private var vm = PeopleViewModel()
    @StateObject private var vm: PeopleViewModel = .init()
    
    var body: some View {
        VStack {
            if vm.isLoading {
                ProgressView()
                Text("Loading...").padding()
            } else {
                Text(vm.people.isEmpty ? "No User" : "Managed to get \(vm.people.count) users").padding()
            }
            Button(action: vm.fetchPeople) {
                Text("Fetch some people")
            }
        }
    }
}


//private extension Class16Observable {
//
//    func fetchPeople() -> Void {
//        isLoading = true
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
//            people = ["Tunde", "Yemi", "Femi", "Obi"]
//            isLoading = false
//        }
//    }
//
//}

struct Class16Observable_Previews: PreviewProvider {
    static var previews: some View {
        Class16Observable()
    }
}
