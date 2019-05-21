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
            editButton.titleLabel!.text = "Done"
            
        }else{
            editButton.titleLabel!.text = "bruh"
        }
        bool = !bool
        
        editTextField.isHidden = !editTextField.isHidden
        creature.setName(name: editTextField.text!)
        title = creature.name
        
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
