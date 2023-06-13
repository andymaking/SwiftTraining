//
//  PurchaseViewModel.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 10/06/2023.
//

import Foundation

final class PurchaseViewModel : ObservableObject {
    @Published var hasPurchased: Bool = false
    @Published var isLoading: Bool = false
    
    func purchase() -> Void {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){ [weak self] in
            self?.hasPurchased = true
            self?.isLoading = false
        }
    }
}
