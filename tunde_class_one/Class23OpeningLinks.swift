//
//  Class23OpeningLinks.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 14/06/2023.
//

import SwiftUI

struct Class23OpeningLinks: View {
    var body: some View {
//        Link("Open Page", destination: .init(string: "https://www.google.com")!)
//        Link("Open Page", destination: .init(string: "https://www.youtubr.com")!)
        Link(destination: .init(string: "https://www.google.com")!) {
            Image("pirate").resizable().frame(width: 100, height: 100).clipShape(Circle())
        }
    }
}

struct Class23OpeningLinks_Previews: PreviewProvider {
    static var previews: some View {
        Class23OpeningLinks()
    }
}
