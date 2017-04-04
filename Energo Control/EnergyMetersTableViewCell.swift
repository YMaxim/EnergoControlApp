//
//  EnergyMetersTableViewCell.swift
//  Energo Control
//
//  Created by Admin on 14.11.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class EnergyMetersTableViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        textLabel?.textColor = UIColor.white
    }
    
    class var identifier : String {
        return String(describing: self)
    }
}
