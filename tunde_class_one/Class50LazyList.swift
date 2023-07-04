//
//  Class50LazyList.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 04/07/2023.
//

import SwiftUI

struct Class50LazyList: View {
    
    private let range : ClosedRange<Int> = 0...20
    private let secondRange : ClosedRange<Int> = 21...40
    
    var body: some View {
        
//        ScrollView {
//            LazyVStack(alignment: .leading, spacing: 32, pinnedViews: .sectionHeaders) {
//                Section {
//                    ForEach(range, id:  \.self){ i in
//                        Text("\(i)")
//                    }
//                } footer: {
//                    Text("First Section").font(.body.weight(.black)).padding().frame(maxWidth: .infinity).background(.mint)
//                }
//
//                Section {
//                    ForEach(secondRange, id:  \.self){ i in
//                        Text("\(i)")
//                    }
//                } header: {
//                    Text("Second Section").font(.body.weight(.black)).padding().frame(maxWidth: .infinity).background(.pink)
//                }
//
//            }
//        }
        
        ScrollView(.horizontal) {
            LazyHStack(alignment: .center, spacing: 32, pinnedViews: .sectionFooters) {
                Section {
                    ForEach(range, id:  \.self){ i in
                        Text("\(i)")
                    }
                } header: {
                    Text("First Section").font(.body.weight(.black)).padding().frame(maxWidth: .infinity).background(.mint)
                }
                
                Section {
                    ForEach(secondRange, id:  \.self){ i in
                        Text("\(i)")
                    }
                } header: {
                    Text("Second Section").font(.body.weight(.black)).padding().frame(maxWidth: .infinity).background(.pink)
                }
                
            }
        }
        
        
    }
}

struct Class50LazyList_Previews: PreviewProvider {
    static var previews: some View {
        Class50LazyList()
    }
}
