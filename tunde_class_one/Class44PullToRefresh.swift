//
//  Class44PullToRefresh.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 03/07/2023.
//

import SwiftUI

struct Class44PullToRefresh: View {
    
    @StateObject private var vm = PeoplesViewModel()
    
    var body: some View {
        NavigationView {
            PeopleView(vm: vm).refreshable {
                await vm.generatePerson()
            }
        }
    }
}

struct Class44PullToRefresh_Previews: PreviewProvider {
    static var previews: some View {
        Class44PullToRefresh()
    }
}
