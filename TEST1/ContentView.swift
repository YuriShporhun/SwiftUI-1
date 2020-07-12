//
//  ContentView.swift
//  TEST1
//
//  Created by Юрий Шпорхун on 12.07.2020.
//  Copyright © 2020 Юрий Шпорхун. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Color(red: 0.5, green: 0.5, blue: 0.5)
            Text("Угадайте данный цвет")
            Color(red: 0.5, green: 0.5, blue: 0.5)
            Text("R: G: B:")
            Button(action: {}) {
                Text("Угадать")
            }
            Slider(value: .constant(0.5))
        } 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
