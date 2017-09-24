//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Charles Braham on 19/09/2017.
//  Copyright © 2017 cb1815. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController { // using a class

    @IBOutlet weak var EmojiLabel: UILabel! 
    @IBOutlet weak var EmojiText: UILabel!
    @IBOutlet weak var SmileyLabel: UILabel!
    @IBOutlet weak var BirthLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        EmojiLabel.text = emoji.stringEmoji
        BirthLabel.text = "BirthYear: \(emoji.birthYear)"
        SmileyLabel.text = "Category: \(emoji.category)"
        EmojiText.text = emoji.definition
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
