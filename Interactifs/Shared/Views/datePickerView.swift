//
//  datePickerView.swift
//  Interactifs
//
//  Created by matthieu passerel on 21/07/2020.
//

import SwiftUI

struct DatePickerView: View {
    @State var date: Date = Date()
    var minDate: Date = Date(timeIntervalSince1970: 0)
    var maxDate: Date = Date(timeIntervalSinceNow: 36000)
    var body: some View {
        DatePicker("Date sélectionnée: \(date)",
                   selection: $date,
                   in: minDate...maxDate,
                   displayedComponents: .hourAndMinute)
    }
}

struct datePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
