//
//  OurScientificWorkTableViewCell.swift
//  Energo Control
//
//  Created by Admin on 19.12.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class OurScientificWorkTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelStack: UIStackView!
    @IBOutlet weak var imageStack: UIStackView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageInCell: UIImageView!
    
    class var identifier : String {
        return String(describing: self)
    }
}
