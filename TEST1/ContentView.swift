//
//  ContentView.swift
//  TEST1
//
//  Created by Юрий Шпорхун on 12.07.2020.
//  Copyright © 2020 Юрий Шпорхун. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let rTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    let bTarget = Double.random(in: 0..<1)

    @State var rGuess: Double
    @State var gGuess: Double
    @State var bGuess: Double

    var body: some View {
        VStack {
            Color(red: rTarget, green: gTarget, blue: bTarget)
            Text("Угадайте данный цвет")
            Color(red: rGuess, green: gGuess, blue: bGuess)
            Text("R: G: B:")
            Button(action: {}) {
                Text("Угадать")
            }
            ColorSlider(value: $rGuess, textColor: .red)
            ColorSlider(value: $gGuess, textColor: .green)
            ColorSlider(value: $bGuess, textColor: .blue)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5)
    }
}

struct ColorSlider: View {
    @Binding var value: Double
    var textColor: Color
    var body: some View {
        HStack
        {
            Text("0").foregroundColor(textColor)
            Slider(value: $value)
            Text("255").foregroundColor(textColor)
        }
    }
}
