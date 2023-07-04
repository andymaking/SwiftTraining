//
//  Class30Buttons.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 18/06/2023.
//

import SwiftUI

struct Class30Buttons: View {
    
    @State private var exampleOneCounter : Int = 0
    @State private var exampleTwoCounter : Int = 0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack(alignment: .center) {
                    Text("Number of time pressed \(exampleOneCounter)")
                    Button {
                        exampleOneCounter += 1
                    } label: {
                        Text("Example One Increase")
                    }

                }
                
                VStack(alignment: .leading) {
                    Text("Number of time pressed \(exampleTwoCounter)")
                    Button(action: increaseCounterTwo) {
                        Text("Example Two Increase")
                    }

                }
                
                Group {
                    Button(role: .cancel) {
                        
                    } label: {
                        Text("Cancel Example Role")
                    }
                    
                    Button(role: .destructive) {
                        
                    } label: {
                        Text("Destructive Role")
                    }
                    
                    Button(role: .cancel) {
                        
                    } label: {
                        Text("Default Role")
                    }

                }
                
                Button {
                    
                } label: {
                    Text("Press Me").frame(maxWidth: .infinity, minHeight: 44).background(.red).tint(.white).clipShape(RoundedRectangle(cornerRadius: 8))
                }.padding()
                
                Button {
                    print("clicked")
                } label: {
                    Text("Send Mail")
                }.buttonStyle(.sendButton)
                
                SendButton(action: {}, text: "Send me data")
            }
        }
    }
}

struct Class30Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Class30Buttons()
    }
}

private extension Class30Buttons {
    func increaseCounterTwo(){
        exampleTwoCounter += 1
    }
}
