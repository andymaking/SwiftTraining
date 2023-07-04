//
//  Class46ForEachWithIdentifiers.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 04/07/2023.
//

import SwiftUI


// MARK: - Model of Persons
struct Persons : Identifiable {
    let id = UUID()
    let firstName : String
    let lastName : String
}

struct Class46ForEachWithIdentifiers: View {
    
    @State private var people : [Persons] = []
    
    var body: some View {
        VStack {
//            ForEach(people, id: \.id) { item in
//                PersonForEachView(item: item)
//            }
            
            // MARK: - ForEach View
            ForEach(people) { item in
                PersonForEachView(item: item)
            }
        }.onAppear{
            self.people = Persons.data
        }
    }
}

struct Class46ForEachWithIdentifiers_Previews: PreviewProvider {
    static var previews: some View {
        Class46ForEachWithIdentifiers()
    }
}


// MARK: - Data of Persons
extension Persons {
    static var data: [Persons] {
        [
            Persons(firstName: "Andima", lastName: "Udoh"),
            Persons(firstName: "Andima", lastName: "Dev"),
            Persons(firstName: "Billy", lastName: "Jackson"),
            Persons(firstName: "Macauley", lastName: "Usen")
        ]
    }
}
