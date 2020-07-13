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
    
    @State var showAlert: Bool = false
    
    func computeScore() -> Int {
        let rDiff = rGuess - rTarget
        let gDiff = gGuess - gTarget
        let bDiff = bGuess - bTarget
        let diff = sqrt(rDiff * rDiff + gDiff * gDiff + bDiff * bDiff)
        return Int((1.0 - diff) * 100 + 0.5)
    }

    var body: some View {
        VStack {
            Color(red: rTarget, green: gTarget, blue: bTarget)
            
            self.showAlert ? Text("R: \(Int(rTarget * 255)) \(Int(gTarget * 255)) \(Int(bTarget * 255))") :
                Text("Угадайте данный цвет")
            
            Color(red: rGuess, green: gGuess, blue: bGuess)
            Text("R: G: B:")
            Button(action: {
                self.showAlert = true
            }) {
                Text("Угадать")
            }.alert(isPresented: $showAlert) {
                Alert(title: Text("Ваш счет:"),
                      message: Text(String(computeScore())))
            }.padding()
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
