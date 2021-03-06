//
//  ContentView.swift
//  Shared

import SwiftUI

// Instances with struct
struct ContentView: View {

    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()

    var body: some View {
        VStack {
            Text("🇰🇷\nPut the Bullseye as close as you can to")
                // Methods
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(game.target))
                .font(.largeTitle)
                .fontWeight(.black)
                .kerning(0)
            HStack {
                Text("1")
                    .bold()
                Slider(value: $sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            Button(action: {
                alertIsVisible = true
            }) {
                Text("HIT ME")
            }
            .alert(isPresented: $alertIsVisible,
                content: {
                let roundedValue = Int(sliderValue.rounded())
                return Alert(title: Text("Hello There"), message: Text("The slider's value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round."), dismissButton: .default(Text("Awesome")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
