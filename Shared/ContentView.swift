//
//  ContentView.swift
//  Shared
//
//  Created by Noah's Ark on 2022/02/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Put the Bullseye as close as you can to")
            Text("89")
            HStack {
                Text("1")
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
            }
            Button(action: {}) {
                Text("HIT ME")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
