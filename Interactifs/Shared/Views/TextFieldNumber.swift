//
//  TextFieldNumber.swift
//  Interactifs (iOS)
//
//  Created by matthieu passerel on 21/07/2020.
//

import SwiftUI

struct TextFieldNumber: View {
    var placeholder: String
    @Binding var text: String
    
    
    var body: some View {
        
        #if os(iOS)
        return TextField(placeholder, text: $text)
            .keyboardType(.numberPad)
        #elseif os(macOS)
        return TextField(placeholder, text: $text)
        #endif
        
    }
    
}

struct TextFieldNumber_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldNumber(placeholder: "Entrez votre age", text: .constant(""))
    }
}
