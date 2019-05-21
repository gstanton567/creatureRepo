//
//  MagicalCreature.swift
//  MCMS
//
//  Created by Grayson Stanton on 5/21/19.
//  Copyright © 2019 Grayson Stanton. All rights reserved.
//

import Foundation

class MagicalCreature
{
    
    var name: String!
    var accessory : String!
    
    init(name: String, accessory: String)
    {
        self.name = name
        self.accessory = accessory
    }
    
    func setName(name: String){
        self.name = name
    }
    
    func setAccessory(accessory: String){
        self.accessory = accessory
    }
}
