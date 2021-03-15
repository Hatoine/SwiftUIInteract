//
//  TextFieldSimple.swift
//  Interactifs (iOS)
//
//  Created by matthieu passerel on 21/07/2020.
//

import SwiftUI

struct TextFieldSimple: View {
    @Binding var text: String
    var placeholder: String
    var body: some View {
        TextField(placeholder , text: $text)
    }
}

struct TextFieldSimple_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldSimple(text: .constant(""), placeholder: "Entrez votre prénom").previewLayout(.sizeThatFits)
    }
}
