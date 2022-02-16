//
//  Game.swift
//  Bullseye (iOS)
//
//  Created by Noah's Ark on 2022/02/15.
//

import Foundation

struct Game {
    
    var target: Int = Int.random(in: 1..<100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        return 100 - abs(target - sliderValue)
    }
}
