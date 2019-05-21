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
    
    
    @IBOutlet weak var creatureTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let patty = MagicalCreature(name: "Patrick", detail: "Ray-Bands", picture: "patty", accessory: "insulin pump")
        let dragon = MagicalCreature(name: "dragon", detail: "fire", picture: "dragon", accessory: "tooth")
        let phoenix = MagicalCreature(name: "phoenix", detail: "rebirth", picture: "bird", accessory: "beak")
        creatures = [patty, dragon, phoenix]
        
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


    @IBAction func onAddPressed(_ sender: UIButton) {
        let creature = MagicalCreature(name: creatureTextField.text!, detail: "", picture: "", accessory: "")
        creatures.append(creature)
        creatureTextField.text = ""
        tableView.reloadData()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = tableView.indexPathForSelectedRow!
        let creature = creatures[indexPath.row]
        let cvc = segue.destination as! CreatureViewController
        cvc.creature = creature
    }
}

