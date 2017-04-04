//
//  OneEnergyMeterTableViewCell.swift
//  Energo Control
//
//  Created by Admin on 08.11.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class OneEnergyMeterTableViewCell: UITableViewCell {
    
    @IBOutlet var fieldLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    
    class var identifier : String {
        return String(describing: self)
    }
}
