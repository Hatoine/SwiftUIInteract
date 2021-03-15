//
//  PickerView.swift
//  Interactifs
//
//  Created by matthieu passerel on 21/07/2020.
//

import SwiftUI

struct PickerView: View {
    @State var selected = 0
    var animals = ["Chat", "Chien", "Poule", "Canard"]
    var body: some View {
        Picker("Animal de compagnie: \(selected)", selection: $selected) {
            ForEach(0..<animals.count) { index in
                Text(animals[index])
                
            }
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
