//
//  Class33DatePicker.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 20/06/2023.
//

import SwiftUI

struct Class33DatePicker: View {
    
    private let dateRange : ClosedRange<Date> = {
        let calendar = Calendar.current
        let minAgeRange = calendar.date(byAdding: .year, value: -120, to: .now)
        let maxAgeRange = calendar.date(byAdding: .year, value: -18, to: .now)
        
        return minAgeRange!...maxAgeRange!
    }()
    
    @State private var selectedDate : Date = .now
    
    var body: some View {
        ScrollView {
            VStack {
                Text(selectedDate, style: .date).padding()
                
    //            DatePicker("Start Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
                DatePicker("Start Date", selection: $selectedDate, displayedComponents: [.date])
                
                DatePicker("Start Date", selection: $selectedDate, displayedComponents: [.date]).labelsHidden()
                
                DatePicker(selection: $selectedDate, displayedComponents: [.date]) {
                    Text("Select a Date")
                }
                
                DatePicker(selection: $selectedDate, in: dateRange, displayedComponents: [.date]) {
                    Text("Over 18's only")
                }
                
                DatePicker(selection: $selectedDate, in: dateRange, displayedComponents: [.date]) {
                    Text("Over 18's only")
                }.labelsHidden().datePickerStyle(.wheel)
                
                DatePicker(selection: $selectedDate, in: dateRange, displayedComponents: [.date]) {
                    Text("Over 18's only")
                }.labelsHidden().datePickerStyle(.graphical)
                
                
            }
        }
    }
}

struct Class33DatePicker_Previews: PreviewProvider {
    static var previews: some View {
        Class33DatePicker()
    }
}
