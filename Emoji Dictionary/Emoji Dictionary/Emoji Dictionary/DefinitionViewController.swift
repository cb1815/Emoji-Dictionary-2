//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Charles Braham on 19/09/2017.
//  Copyright © 2017 cb1815. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var EmojiLabel: UILabel!
    @IBOutlet weak var EmojiText: UILabel!
    
    var emoji = "No EMOJI"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        EmojiLabel.text = emoji
        
        if emoji == "🤡" {
            EmojiText.text = "A Cute Hamster"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
