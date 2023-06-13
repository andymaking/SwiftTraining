//
//  PeopleViewModel.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 10/06/2023.
//

import Foundation

final class PeopleViewModel: ObservableObject {
    @Published var people: [String] = []
    @Published var isLoading: Bool = false
    
    func fetchPeople() -> Void {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){ [weak self] in
            self?.people = ["Tunde", "Yemi", "Femi", "Obi"]
            self?.isLoading = false
        }
    }
}
