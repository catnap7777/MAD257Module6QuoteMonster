//
//  InterfaceController.swift
//  MAD257Module6QuoteMonster WatchKit Extension
//
//  Created by Karen Mathes on 2/23/21.
//  Copyright © 2021 TygerMatrix Software. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var quoteLabel: WKInterfaceLabel!
    @IBOutlet var hitMeButton: WKInterfaceButton!
    @IBOutlet var quoteOutputLabel: WKInterfaceLabel!
    
    //var quoteArray = [(author: String, name: String)]()
    var quoteArray: [(author: String, quote: String)] =
        [("Albert Einstein", "I have no special talent. I am only passionately curious. "),
        ("Mother Teresa", "If you judge people, you have no time to love them."),
        ("Buddha", "All that we are is the result of what we have thought."),
        ("Coco Chanel", "The most courageous act is still to think for yourself. Aloud."),
        ("Dalai Lama","Be kind whenever possible. It is always possible."),
        ("LeBron James","I like criticism. It makes you strong."),
        ("Benjamin Franklin","Well done is better than well said."),
        ("Eleanor Roosevelt","The future belongs to those who believe in the beauty of their dreams."),
        ("Michael Jordan","I’ve failed over and over and over again in my life and that is why I succeed."),
        ("Oscar Wilde","Be yourself; everyone else is already taken."),
        ("Monty Python","It's just a flesh wound."),
        ("Airplane (1980)","I am serious. And don't call me Shirley."),
        ("The Incredibles (2004)","Greater good?' I am your wife! I'm the greatest good you're ever gonna get!"),
        ("Lilo & Stitch","I like fluffy!"),
        ("Tony Stark, The Avengers","Doth mother know you weareth her drapes?"),
        ("Drax, Guardians of the Galaxy","Nothing goes over my head. My reflexes are too fast. I would catch it."),
        ("Sherk, Sherk 2","Donkey, You Have The Right To Remain Silent. What You Lack Is The Capacity.")
//        ("KMmmmmmmmmmmmmmmmmmmmmm1234mmmmmmmmmmmmmmmmmmm","Test to see how long quote can be and if it can scroll1234567891012345678910123456789101234567891012345678910123456781234567891012345678910aaaa")
        ]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        
        // Configure interface objects here.
    }
    
    @IBAction func hitMeButtonPressed() {
        
        quoteLabel.setText("Getting a quote...")
        quoteLabel.
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            let randomInt = Int.random(in: 0...16)
            self.quoteOutputLabel.setText(self.quoteArray[randomInt].quote)
            self.quoteLabel.setText(self.quoteArray[randomInt].author)
        }
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
