//
//  TextEditorView.swift
//  Interactifs
//
//  Created by matthieu passerel on 21/07/2020.
//

import SwiftUI

struct TextEditorView: View {
    @State var text: String = "Entrez du texte ici"
    var body: some View {
        TextEditor(text: $text)
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView().previewLayout(.sizeThatFits)
    }
}
