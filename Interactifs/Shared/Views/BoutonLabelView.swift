//
//  BoutonLabelView.swift
//  Interactifs (iOS)
//
//  Created by matthieu passerel on 21/07/2020.
//

import SwiftUI

struct BoutonLabelView: View {
    @State var image = "hare.fill"
    var body: some View {
        Button(action: {
           image = (image == "hare.fill")
            ? "tortoise.fill"
            : "hare.fill"
        }, label: {
            Label("Changer d'animal", systemImage: image)
        }).font(.title)
    }
}

struct BoutonLabelView_Previews: PreviewProvider {
    static var previews: some View {
        BoutonLabelView()
    }
}
