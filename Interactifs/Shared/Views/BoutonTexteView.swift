//
//  BoutonTexteView.swift
//  Interactifs (iOS)
//
//  Created by matthieu passerel on 21/07/2020.
//

import SwiftUI

struct BoutonTexteView: View {
    @State var color: Color = .primary
    var body: some View {
        Button("Bouton Texte: Appuyez moi") {
            self.color = (color == .primary)
                ? .red
                : .primary
        }.foregroundColor(color)
    }
}

struct BoutonTexteView_Previews: PreviewProvider {
    static var previews: some View {
        BoutonTexteView()
    }
}
