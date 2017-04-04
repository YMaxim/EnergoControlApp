//
//  OurScientificWorkCellClass.swift
//  Energo Control
//
//  Created by Admin on 19.12.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class OurScientificWorkCellClass : NSObject {
    var title: String? = ""
    var picture: UIImage?
    
    init(withText text: String? = nil, image: UIImage? = nil) {
        super.init()
        
        if let tex = text {
            self.title = tex
        }
        
        if let img = image {
            self.picture = img
        }
    }
}
