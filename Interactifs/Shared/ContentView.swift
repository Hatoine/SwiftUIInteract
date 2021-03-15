//
//  ContentView.swift
//  Shared
//
//  Created by matthieu passerel on 21/07/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Les Boutons")) {
                    NavigationLink("Bouton Texte", destination: BoutonTexteView())
                    NavigationLink("Bouton Label", destination: BoutonLabelView())
                }
                Section(header: Text("Textes")) {
                    NavigationLink("TextField", destination: TextFieldView())
                    NavigationLink("SecureField", destination: SecureFieldView())
                    NavigationLink("TextEditor", destination: TextEditorView())
                }
                Section(header: Text("Tappable")) {
                    NavigationLink("Toggle", destination: ToggleView())
                    NavigationLink("Stepper", destination: StepperView())
                }
                Section(header: Text("Pickers")) {
                    NavigationLink("Picker Simple", destination: PickerView())
                    NavigationLink("Date Picker", destination: DatePickerView())
                    NavigationLink("Segmented", destination: PickerSegmented())
                }
                NavigationLink("Form", destination: FormInteractive())
            }.listStyle(SidebarListStyle())
            .navigationTitle("Interactifs")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
