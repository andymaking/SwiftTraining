//
//  Class36Slider.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 20/06/2023.
//

import SwiftUI

struct Class36Slider: View {
    
    @State private var volume : Double = 0
    @State private var hasChanged : Bool = false
    
    private let step : Double = 5
    private let range : ClosedRange<Double> = 0...100
    
    var body: some View {
        VStack {
            Text("Current value \(volume)%")
            Text("Current value \(Int(volume))%")
            HStack {
                decreaseBtn
                Spacer(minLength: 16)
                
                Slider(value: $volume, in: range, step: step) {} minimumValueLabel: {
                    Text("\(Int(range.lowerBound))")
                } maximumValueLabel: {
                    Text("\(Int(range.upperBound))")
                } onEditingChanged: { hasChanged in
                    self.hasChanged = hasChanged
                }
                
//                Slider(value: $volume, in: range, step: step){ hasChanged in
//                    self.hasChanged = hasChanged
//                }
                Spacer(minLength: 16)
                increaseBtn
            }
        }.padding()
    }
}

struct Class36Slider_Previews: PreviewProvider {
    static var previews: some View {
        Class36Slider()
    }
}

private extension Class36Slider {
    func increase (){
        guard volume < range.upperBound else { return }
        volume += step
    }
    
    func decrease (){
        guard volume > range.lowerBound else { return }
        volume -= step
    }
}

private extension Class36Slider {
    var increaseBtn : some View {
        Button {
            withAnimation {
                increase()
            }
        } label: {
             Image(systemName: "plus")
        }.disabled(hasChanged).opacity(hasChanged ? 0.4 : 1)
    }
    
    var decreaseBtn : some View {
        Button {
            withAnimation {
                decrease()
            }
        } label: {
             Image(systemName: "minus")
        }.disabled(hasChanged).opacity(hasChanged ? 0.4 : 1)
    }
}
