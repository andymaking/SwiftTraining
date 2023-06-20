//
//  Class29Stepper.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 18/06/2023.
//

import SwiftUI

struct Class29Stepper: View {
    @State private var number : Int = 0
    @State private var numberOne : Int = 0
    @State private var numberTwo : Int = 0
    @State private var numberThree : Int = 0
    
    var body: some View {
        VStack {
            
            Group {
                Text("The user selected a quantity of \(number)")
                Stepper("Quantity", value: $number, in: 0...20, step: 1)
            }
            
            Group {
                Text("The user selected a quantity of \(numberTwo)")
                Stepper("Quantity", value: $numberTwo, in: 0...20, step: 1).labelsHidden()
            }
            
            Group {
                Text("The user selected a quantity of \(numberThree)")
                Stepper(value: $numberThree, in: 0...20, step: 1){
                    Text("🍔 Bite \(numberThree)")
                }
            }
            
            Group {
                Text("The user selected a quantity of \(numberOne)")
                Stepper(value: $numberOne, in: 0...20, step: 1){
                    Text("🍕 Bite \(numberOne)")
                } onEditingChanged: { editingStarted in
//                    print("The value changed \(editingStarted) the current quantitiy is \(numberOne)")
                }
            }
        }
    }
}

struct Class29Stepper_Previews: PreviewProvider {
    static var previews: some View {
        Class29Stepper()
    }
}
