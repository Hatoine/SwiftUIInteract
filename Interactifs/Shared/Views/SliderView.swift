//
//  SliderView.swift
//  Interactifs
//
//  Created by matthieu passerel on 21/07/2020.
//

import SwiftUI

struct SliderView: View {
    @State var value: CGFloat = 50
    var min: CGFloat = 0
    var max: CGFloat = 100
    var step: CGFloat = 1
    var body: some View {
        
        VStack {
            #if os(iOS)
            Text("Valeur actuelle: \(Int(value))")
            #endif
            Slider(
                value: $value,
                in: min...max,
                step: step,
                onEditingChanged: { (success) in
                    print("Succes: \(success)")
                },
                minimumValueLabel: Text("min"),
                maximumValueLabel: Text("max")) {
                Text("Valeur actuelle: \(Int(value))")
            }
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
