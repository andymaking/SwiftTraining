//
//  Class26Spinner.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 16/06/2023.
//

import SwiftUI

struct Class26Spinner: View {
    let start = Date().addingTimeInterval(-30)
    let end = Date().addingTimeInterval(90)
    @State private var progress: Double = 0
    @State private var progressTwo: Double = 0
    @State private var progressThree: Double = 0
    var body: some View {
        VStack {
            VStack {
                ProgressView()
            }.padding()
            
            VStack {
                ProgressView{
                    Label("Fetching Content", systemImage: "face.smiling")
                }.progressViewStyle(.roundedProgress)
//                .tint(.blue).foregroundColor(.mint)
            }
            
            VStack {
                ProgressView("Example One", value: progress).progressViewStyle(.linear)
                
                Button("increase"){
                    withAnimation {
                        progress += 0.1
                    }
                }
            }
            
            VStack {
                ProgressView("Example Two", value: progressTwo, total: 100).progressViewStyle(.linear)
                
                Button("increase"){
                    withAnimation {
                        progressTwo += 1
                    }
                }
            }
            
            VStack {
                ProgressView(value: progressThree, total: 100){
                    Label("Upload Progress \(progressThree)", systemImage: "arrow.counterclockwise.icloud").frame(maxWidth: .infinity, alignment: .center)
                }.progressViewStyle(.automatic)
                
                Button("increase"){
                    withAnimation {
                        progressThree += 1
                    }
                }
            }
            
            
        }
    }
}

struct Class26Spinner_Previews: PreviewProvider {
    static var previews: some View {
        Class26Spinner()
    }
}
