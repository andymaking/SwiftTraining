//
//  Class31NewButton.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 19/06/2023.
//

import SwiftUI

struct Class31NewButton: View {
    private var buttonText : String = "Subscribe to the channel"
    private var example : String = "Button Style Example"
    private var materialExample : String = "Material Example"
    var body: some View {
        ScrollView {
            VStack {
                Button(buttonText){
                    
                }.padding()
                .background(.red)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                
                Button(buttonText){}
                    .tint(.red)
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                
                VStack(spacing: 16) {
                    Text("Material Examples").bold()
                    
                    Button(materialExample){}
                        .padding()
                        .background(.thinMaterial, in: Capsule())
                        .controlSize(.regular)
                    
                    Button(materialExample){}
                        .padding()
                        .background(.ultraThinMaterial)
                        .controlSize(.regular)
                    
                    Button(materialExample){}
                        .padding()
                        .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 8))
                        .controlSize(.regular)
                    
                    Button(materialExample){}
                        .padding()
                        .background(.thickMaterial, in: RoundedRectangle(cornerRadius: 8))
                        .controlSize(.regular)
                    
                    Button(materialExample){}
                        .padding()
                        .background(.ultraThickMaterial, in: RoundedRectangle(cornerRadius: 8))
                        .controlSize(.regular)
                    
                    
                }.frame(maxWidth: .infinity).padding().background(.mint)
                
                VStack(spacing: 16) {
                    Text(example).bold()
                    
                    Button(example){}
                        .tint(.mint)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius: 8))
                        .controlSize(.large)
                    
                    Button(example){}
                        .tint(.mint)
                        .buttonStyle(.bordered)
                        .buttonBorderShape(.roundedRectangle(radius: 8))
                        .controlSize(.large)
                    
                    Button(example){}
                        .tint(.mint)
                        .buttonStyle(.borderless)
                        .buttonBorderShape(.roundedRectangle(radius: 8))
                        .controlSize(.large)
                    
                    Button(example){}
                        .tint(.mint)
                        .buttonStyle(.plain)
                        .buttonBorderShape(.roundedRectangle(radius: 8))
                        .controlSize(.large)
                    
                    Button(example){}
                        .tint(.mint)
                        .buttonStyle(.automatic)
                        .buttonBorderShape(.roundedRectangle(radius: 8))
                        .controlSize(.large)
                    
                    
                }
            }
            
            
            VStack(spacing: 16) {
                Text("Button Border Shape Example").bold()
                
                Button(example){}
                    .tint(.teal)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 15))
                    .controlSize(.large)
                
                Button(example){}
                    .tint(.teal)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle)
                    .controlSize(.large)
                
                Button(example){}
                    .tint(.teal)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.capsule)
                    .controlSize(.large)
                
                Button(example){}
                    .tint(.teal)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.automatic)
                    .controlSize(.large)
                
                
            }
            
            VStack(spacing: 16) {
                Text("Button Control Shape Example").bold()
                
                Button(example){}
                    .tint(.pink)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle)
                    .controlSize(.mini)
                
                Button(example){}
                    .tint(.pink)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle)
                    .controlSize(.small)
                
                Button(example){}
                    .tint(.pink)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle)
                    .controlSize(.regular)
                
                Button(example){}
                    .tint(.pink)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle)
                    .controlSize(.large)
                
                
            }
            
            VStack(spacing: 16) {
                Text("Button Control Shape Example").bold()
                
                Button(role: .destructive) {
                    
                } label: {
                    Text("Delete")
                }.buttonStyle(.borderedProminent)
                    .controlSize(.large)

                Button(role: .destructive) {
                    
                } label: {
                    Text("Delete")
                }.buttonStyle(.bordered)
                    .controlSize(.large)

                Button(role: .cancel) {
                    
                } label: {
                    Text("Delete")
                }.buttonStyle(.borderedProminent)
                    .controlSize(.large)

                Button(role: .cancel) {
                    
                } label: {
                    Text("Delete")
                }.buttonStyle(.bordered)
                    .controlSize(.large)

                
                
            }
        }
    }
}

struct Class31NewButton_Previews: PreviewProvider {
    static var previews: some View {
        Class31NewButton()
    }
}
