//
//  PeopleView.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 04/07/2023.
//

import SwiftUI

struct PeopleView: View {
    
    @Environment(\.refresh) private var refreshAction
    @ObservedObject var vm: PeoplesViewModel
    
    var body: some View {
        VStack {
            List {
                HintView()
                ForEach(vm.people) { person in
                    
                    Text("\(person.gender.rawValue) \(person.name)")
                }
            }
            .listRowSeparator(.hidden)
            .navigationTitle("Random Person")
//            .toolbar {
//                refreshContent
//            }
        }
    }
    
    @ViewBuilder
    var refreshContent: some View {
        if let refreshAction = refreshAction {
            
            if vm.isLoading {
                ProgressView()
            } else {
                Button {
                    Task {
                        await refreshAction()
                    }
                } label: {
                    Image(systemName: "arrow.clockwise")
                }
            }
        }
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView(vm: PeoplesViewModel())
    }
}
