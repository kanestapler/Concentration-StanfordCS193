//
//  ViewController.swift
//  Concentration
//
//  Created by Kane Stapler on 4/22/18.
//  Copyright © 2018 Kane Stapler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    let emojies = ["👻", "🎃", "👻", "🎃"]
    
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet var cards: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCard(emoji: emojies[cards.index(of: sender)!], button: sender)
    }
    
    func flipCard(emoji: String, button: UIButton) {
        if (button.currentTitle == nil) {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            flipCount += 1
        } else {
            button.setTitle(nil, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        }
    }

}

