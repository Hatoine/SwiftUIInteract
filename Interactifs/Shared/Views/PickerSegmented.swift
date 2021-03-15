//
//  PickerSegmented.swift
//  Interactifs
//
//  Created by matthieu passerel on 21/07/2020.
//

import SwiftUI

struct PickerSegmented: View {
    @State var selected: Int = 0
    var repas: [String] = ["Petit déjeuner", "Déjeuner", "Diner"]
    var body: some View {
        Picker("Quel est votre repas prépéré?", selection: $selected) {
            ForEach(0..<repas.count) { index in
                Text(repas[index])
            }
        }.pickerStyle(SegmentedPickerStyle())
    }
}

struct PickerSegmented_Previews: PreviewProvider {
    static var previews: some View {
        PickerSegmented()
    }
}
