//
//  TextFieldView.swift
//  Interactifs (iOS)
//
//  Created by matthieu passerel on 21/07/2020.
//

import SwiftUI

struct TextFieldView: View {
    
    @State var prenom: String = ""
    @State var nom: String = ""
    @State var isEditing = false
    @State var age: String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            VStack {
                Text("TextFieldBasique").foregroundColor(.secondary)
                Text("Prenom: \(prenom)")
                TextFieldSimple(text: $prenom, placeholder: "Entrez un prénom")
                Divider()
            }
            VStack {
                Text("TextField avec OnChange").foregroundColor(.secondary)
                Text("Nom: \(nom)")
                TextFieldTrigger(placeholder: "Entrez votre nom", text: $nom, triggered: $isEditing)
                Divider()
            }
            VStack {
                Text("TextField Decimal")
                Text("Age: \(age)")
                TextFieldNumber(placeholder: "Entrez votre age", text: $age)
                Divider()
                
            }
            Spacer()
        }.onTapGesture {
            #if os(iOS)
            UIApplication.shared.sendAction(
                #selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            #endif
        }
        .background(isEditing ? Color.orange : Color.yellow)
        .padding()
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
