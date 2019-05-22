//
//  BattleViewController.swift
//  MCMS
//
//  Created by Gwyneth Semanisin on 5/21/19.
//  Copyright © 2019 Grayson Stanton. All rights reserved.
//

import UIKit

class BattleViewController: UIViewController {

    var winner = ""
    var reasonForWin = ""
    
    @IBOutlet weak var winnerTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if reasonForWin == ""{
            reasonForWin = "unspecified power"
        }
        
        winnerTextField.text = "In the Ultimate Creature Battle Royale, the " + winner + " won! It defeated all other contendors with its mighty " + reasonForWin + "!"
        
        print(winner)
        print(reasonForWin)
    }
    

    

}
