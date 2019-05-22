//
//  ViewController.swift
//  MCMS
//
//  Created by Grayson Stanton on 5/21/19.
//  Copyright © 2019 Grayson Stanton. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var creatures: [MagicalCreature] = []
    var isAddButtonPressed = true
    
    
    @IBOutlet weak var creatureTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let patty = MagicalCreature(name: "Patrick", detail: "Insulin Pump", picture: "patty", accessory: "Ray-Bands")
        let dragon = MagicalCreature(name: "Dragon", detail: "Fire", picture: "dragon", accessory: "Tooth")
        let phoenix = MagicalCreature(name: "Phoenix", detail: "Rebirth", picture: "bird", accessory: "Beak")
        creatures = [patty, dragon, phoenix]
        
    // MARK: - Table View functions
    }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return creatures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID")!
        let creature = creatures[indexPath.row]
        cell.textLabel!.text = creature.name
        cell.detailTextLabel?.text = creature.detail
        return cell
    }
    
    // MARK: - Button Actions
    @IBAction func onAddPressed(_ sender: UIButton) {
        
        let creature = MagicalCreature(name: creatureTextField.text!, detail: "", picture: "", accessory: "")
        creatures.append(creature)
        creatureTextField.text = ""
        tableView.reloadData()
    }
    
    @IBAction func battleButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "maintoBattleSegue", sender: nil)
        
    }
    
    // MARK: - Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "maintoBattleSegue"{
            let winnernumber = creatures[Int.random(in: 0...(creatures.count-1))]
            let winner = winnernumber.name!
            let reasonForWin = winnernumber.detail!
            let bvc = segue.destination as! BattleViewController
            bvc.winner = winner
            bvc.reasonForWin = reasonForWin
            
            
        }
        else{
            let indexPath = tableView.indexPathForSelectedRow!
            let creature = creatures[indexPath.row]
            let cvc = segue.destination as! CreatureViewController
            cvc.creature = creature
        }
    }
    
    
    
    
}

