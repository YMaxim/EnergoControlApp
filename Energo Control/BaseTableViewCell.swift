//
//  BaseTableViewCell.swift
//  Energo Control
//
//  Created by Admin on 31.03.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class BaseDocumentationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    class var identifier : String {
        return String(describing: self)
    }
}
