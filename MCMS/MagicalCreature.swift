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
    var detail : String!
    var picture: String!
    var accessory: String!
    
    init(name: String, detail: String, picture: String, accessory: String)
    {
        self.name = name
        self.detail = detail
        self.picture = picture
        self.accessory = accessory
    }
    
    func setName(name: String){
        self.name = name
    }
    
    func setDetail(detail: String){
        self.detail = detail
    }
    
    func setImage(picture: String) {
        self.picture = picture
    }
}
