//
//  SecureFieldView.swift
//  Interactifs (iOS)
//
//  Created by matthieu passerel on 21/07/2020.
//

import SwiftUI

struct SecureFieldView: View {
    @State var mdp: String = ""
    
    var body: some View {
        VStack {
            Text("Mot de passe : \(mdp)")
            SecureField("Mot de passe", text: $mdp)
        }
    }
}

struct SecureFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldView()
    }
}
