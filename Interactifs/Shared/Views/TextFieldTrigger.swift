//
//  TextFieldTrigger.swift
//  Interactifs (iOS)
//
//  Created by matthieu passerel on 21/07/2020.
//

import SwiftUI

struct TextFieldTrigger: View {
    var placeholder: String
    @Binding var text: String
    @Binding var triggered: Bool
    var body: some View {
        TextField(placeholder, text: $text) { (edited) in
            triggered = edited
        } onCommit: {
            print("Commit")
        }.textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct TextFieldTrigger_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldTrigger(placeholder: "Entrez votre nom", text: .constant(""), triggered: .constant(false)).previewLayout(.sizeThatFits)
    }
}
