//
//  FormInteractive.swift
//  Interactifs
//
//  Created by matthieu passerel on 21/07/2020.
//

import SwiftUI

struct FormInteractive: View {
    @State var name: String = ""
    @State var mdp: String = ""
    @State var selectedSegmented = 0
    @State var toggleValue: Bool = false
    @State var poids: CGFloat = 40
    @State var step = 18
    @State var date = Date()
    @State var selectedContent = 0
    var body: some View {
        Form {
            Section(header: Text("Identité")) {
                TextFieldSimple(text: $name, placeholder: "Entrez votre nom")
                SecureField("Mot de passe", text: $mdp)
            }
            Section(header: Text("Informations")) {
                Picker("Genre", selection: $selectedSegmented) {
                    Text("Masculin").tag(0)
                    Text("Féminin").tag(1)
                }.pickerStyle(SegmentedPickerStyle())
                Toggle((toggleValue) ? "Célibataire" : "Marié", isOn: $toggleValue)
                Stepper("Age: \(step)", value: $step)
                #if os(iOS)
                Text("Poids: \(Int(poids))")
                #endif
                Slider(value: $poids, in: 0...150, minimumValueLabel: Text("0"), maximumValueLabel: Text("150")) {
                    Text("Poids: \(Int(poids))")
                }
            }
            Section(header: Text("Autres")) {
                DatePicker("date de naissance", selection: $date, displayedComponents: .date)
                Text("Nombre d'enfants: \(selectedContent)")
                
                #if os(iOS)
                Picker("", selection: $selectedContent) {
                    ForEach(0..<10) { index in
                        Text("\(index)").tag(index)
                    }
                }.pickerStyle(WheelPickerStyle())
                #elseif os(macOS)
                Picker("", selection: $selectedContent) {
                    ForEach(0..<10) { index in
                        Text("\(index)").tag(index)
                    }
                }
                #endif
            }

        }
    }
}

struct FormInteractive_Previews: PreviewProvider {
    static var previews: some View {
        FormInteractive()
    }
}
