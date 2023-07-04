//
//  Class48ScrollViewReader.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 04/07/2023.
//

import SwiftUI

struct Class48ScrollViewReader: View {
    
    @State private var hasReachedEnd : Bool = false
    private let range : ClosedRange<Int> = 0...50
    
    var body: some View {
        VStack {
            
            ScrollViewReader { proxy in
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(range, id: \.self){ item in
                            createTxVw(with: item)
                        }
                    }
                }.padding(.bottom, 50)
                    .overlay(alignment: hasReachedEnd ? .bottomTrailing : .bottomLeading) {
                        HStack{
                            
                            Button {
                                if let firstIndex = range.min(){
                                    withAnimation {
                                        proxy.scrollTo(firstIndex)
                                    }
                                    hasReachedEnd = false
                                }
                            } label: {
                                Image(systemName: "arrow.backward.circle.fill")
                            }

                            Button {
                                if let lastIndex = range.max(){
                                    withAnimation {
                                        proxy.scrollTo(lastIndex)
                                    }
                                    hasReachedEnd = true
                                }
                            } label: {
                                Image(systemName: "arrow.forward.circle.fill")
                            }

                        }.font(.title.weight(.black))
                    }
                
            }
        }
    }
}

struct Class48ScrollViewReader_Previews: PreviewProvider {
    static var previews: some View {
        Class48ScrollViewReader()
    }
}

private extension Class48ScrollViewReader {
    func createTxVw(with index: Int) -> some View {
        Text("\(index)").padding().frame(maxWidth: .infinity).background(.mint, in: RoundedRectangle(cornerRadius: 8, style: .continuous))
            .padding(.horizontal, 8)
    }
}
