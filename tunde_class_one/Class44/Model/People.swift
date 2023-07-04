//
//  People.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 03/07/2023.
//

import Foundation

struct Person: Identifiable {
    
    enum Gender: String {
        case male = "👨"
        case female = "👩"
        case genderNeutral = "👱"
    }
    
    let id = UUID()
    let name: String
    let gender: Gender
}
