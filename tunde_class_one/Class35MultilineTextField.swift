//
//  Class35MultilineTextField.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 20/06/2023.
//

import SwiftUI

struct Class35MultilineTextField: View {
    @State private var text : String = ""
    @FocusState private var inputFocused : Bool
    var body: some View {
        VStack {
            titleView
            textEditorView
            buttonVw
        }.padding(.horizontal)
    }
}

struct Class35MultilineTextField_Previews: PreviewProvider {
    static var previews: some View {
        Class35MultilineTextField()
    }
}

private extension Class35MultilineTextField {
    var textEditorView : some View {
        TextEditor(text: $text)
//            .textFieldStyle(.roundedBorder)
            .frame(height: 250)
            .focused($inputFocused)
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(inputFocused ? .blue.opacity(0.2) : .gray.opacity(0.2), lineWidth: 2))
    }
    
    var buttonVw : some View {
        Button {
            print("The user inputted: \(text)")
        } label: {
            Text("Submit")
        }.buttonStyle(.bordered)
    }
    
    var titleView : some View {
        Text("Description").bold()
    }
}
