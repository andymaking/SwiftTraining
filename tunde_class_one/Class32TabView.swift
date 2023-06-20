//
//  Class32TabView.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 19/06/2023.
//

import SwiftUI

enum Screen {
    case one
    case two
}

final class TabRouter : ObservableObject {
    @Published var screen : Screen = .one
    
    func change(to screen: Screen){
        self.screen = screen
    }
}

struct Class32TabView: View {
    
    @State var router = TabRouter()
    
    var body: some View {
        TabView(selection: $router.screen) {
            ScreenOne()
                .badge(3)
                .tag(Screen.one)
                .environmentObject(router)
                .tabItem {
                Label("Screen 1", systemImage: "calendar")
            }
            ScreenTwo()
                .tag(Screen.two)
                .environmentObject(router)
                .tabItem {
                Label("Screen 2", systemImage: "house")
            }
        }
    }
}

struct Class32TabView_Previews: PreviewProvider {
    static var previews: some View {
        Class32TabView()
    }
}
