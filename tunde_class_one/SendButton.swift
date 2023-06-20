//
//  SendButton.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 19/06/2023.
//

import SwiftUI

struct SendButton: View {
    let action : ()-> Void
    let text : String
    var body: some View {
        Button(action: action) {
            Text(text)
        }.buttonStyle(.sendButton)
    }
}

struct SendButton_Previews: PreviewProvider {
    static var previews: some View {
        SendButton(action: {}, text: "Send me Data")
    }
}
