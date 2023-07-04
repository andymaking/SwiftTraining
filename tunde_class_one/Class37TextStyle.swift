//
//  Class37TextStyle.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 20/06/2023.
//

import SwiftUI

struct Class37TextStyle: View {
    var body: some View {
        VStack {
            Group {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).italic().bold().underline(true, color: .mint)
                
                Text("Your Text Here").foregroundColor(.blue).font(.system(size: 18, weight: .semibold, design: .rounded))
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).foregroundColor(.mint).font(.largeTitle.weight(.black))
                
                Text(.now, style: .timer)
                Text(.now, style: .time)
                Text(.now, style: .date)
                
                Text(Date.now, format: Date.FormatStyle(date: .abbreviated, time: .shortened))
                
                Text(740, format: .currency(code: "USD"))
                Text(74.6, format: .currency(code: "GBP"))
            }
            
            Group {
                Text(740, format: .currency(code: "EUR"))
                
                Text(Date.now...Date.now.addingTimeInterval(3900))
                
                Text("View calendaar \(Image(systemName: "calendar")) here")
            }
            
        }
    }
}

struct Class37TextStyle_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Class37TextStyle()
            Class37TextStyle()
                .preferredColorScheme(.dark)
        }
    }
}
