//
//  CreatureViewController.swift
//  MCMS
//
//  Created by Grayson Stanton on 5/21/19.
//  Copyright © 2019 Grayson Stanton. All rights reserved.
//

import UIKit

class CreatureViewController: UIViewController {
    
    var creature : MagicalCreature!
    var bool = false
    var bool2 = false
    @IBOutlet weak var editTextField: UITextField!
    @IBOutlet weak var editButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = creature.name
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        editTextField.isHidden = true
    }
    

    @IBAction func onEditPressed(_ sender: UIButton) {
        if !bool  {
            editButton.setTitle("Done", for: .normal)
            print("yo")
        }else{
            editButton.setTitle("Edit", for: .normal)
        }
        bool = !bool
        
        editTextField.isHidden = !editTextField.isHidden
        creature.setName(name: editTextField.text!)
        title = creature.name
        
        
        
    }
    

    @IBAction func onDetailPressed(_ sender: Any) {
        if !bool  {
            editButton.setTitle("Done", for: .normal)
            print("yo")
        }else{
            editButton.setTitle("Edit", for: .normal)
        }
        bool = !bool
    }
}
