//
//  StepperView.swift
//  Interactifs
//
//  Created by matthieu passerel on 21/07/2020.
//

import SwiftUI

struct StepperView: View {
    @State var step: Int = 0
    var body: some View {
        Stepper("Nombre de pas: \(step)", value: $step, in: 0...100, step: 2, onEditingChanged: { (edited) in
            print("Changed value")
        })
            .padding(.all, 10)
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView().previewLayout(.sizeThatFits)
    }
}
