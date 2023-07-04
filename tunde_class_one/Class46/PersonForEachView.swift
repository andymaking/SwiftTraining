//
//  PersonForEachView.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 04/07/2023.
//

import SwiftUI

struct PersonForEachView: View {
    
    let item: Persons
    
    var body: some View {
        Text("\(item.firstName) \(item.lastName)")
    }
}

struct PersonForEachView_Previews: PreviewProvider {
    static var previews: some View {
        PersonForEachView(item: Persons.data.first!)
    }
}
