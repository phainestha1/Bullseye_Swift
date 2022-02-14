//
//  ContentView.swift
//  Shared
//
//  Created by Noah's Ark on 2022/02/14.
//

import SwiftUI

// Instances with struct
struct ContentView: View {
    // Data
    var body: some View {
        VStack {
            Text("🇰🇷\nPut the Bullseye as close as you can to")
                // Methods
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text("89")
                .font(.largeTitle)
                .fontWeight(.black)
                .kerning(0)
            HStack {
                Text("1")
                    .bold()
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
                    .bold()
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
