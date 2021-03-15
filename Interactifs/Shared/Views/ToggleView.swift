//
//  ToggleView.swift
//  Interactifs
//
//  Created by matthieu passerel on 21/07/2020.
//

import SwiftUI

struct ToggleView: View {
    @State var isOn = false
    var body: some View {
        Toggle((isOn) ? "Je suis actif": "Je suis inactif", isOn: $isOn)
            .toggleStyle(SwitchToggleStyle(tint: .orange))
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
