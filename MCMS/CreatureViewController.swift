//
//  CreatureViewController.swift
//  MCMS
//
//  Created by Grayson Stanton on 5/21/19.
//  Copyright © 2019 Grayson Stanton. All rights reserved.
//

import UIKit

class CreatureViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
        var creature : MagicalCreature!
    var bool = false
    var bool2 = false
    @IBOutlet weak var editTextField: UITextField!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var detailButton: UIButton!
    @IBOutlet weak var detailTextField: UITextField!
    @IBOutlet weak var detailTextView: UITextView!
    @IBOutlet weak var creatureImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = creature.name
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        editTextField.isHidden = true
        detailTextField.isHidden = true
        
        if creature.picture != ""{
            creatureImageView.image = UIImage(named: creature.picture)
        }
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
        if !bool2  {
            detailButton.setTitle("Done", for: .normal)
            
        }else{
            detailButton.setTitle("Detail", for: .normal)
        }
        bool2 = !bool2
        
        detailTextField.isHidden = !detailTextField.isHidden
        creature.setDetail(detail: detailTextField.text!)
        detailTextView.text = creature.detail
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var creatures : [String] = [creature.accessory]

        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID2")!
        let creature = creatures[indexPath.row]
        cell.textLabel!.text = creature
        
        return cell
    }
    
    
    
}
