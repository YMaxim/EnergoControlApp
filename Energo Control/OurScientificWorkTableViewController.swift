//
//  OurScientificWorkTableViewController.swift
//  Energo Control
//
//  Created by Admin on 19.12.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

struct OurScientificWorkContent {
    
    static let text1: String = NSLocalizedString("ourScientificWork1", comment: "text block 1 in AboutCompanyTableViewController")
    
    static let text2: String = NSLocalizedString("ourScientificWork2", comment: "text block 2 in AboutCompanyTableViewController")
    
    static let text3: String = NSLocalizedString("ourScientificWork3", comment: "text block 3 in AboutCompanyTableViewController")
    
    static let text4: String = NSLocalizedString("ourScientificWork4", comment: "text block 4 in AboutCompanyTableViewController")
    
    static let text5: String = NSLocalizedString("ourScientificWork5", comment: "text block 5 in AboutCompanyTableViewController")
    
    static let text6: String = NSLocalizedString("ourScientificWork6", comment: "text block 6 in AboutCompanyTableViewController")
}

class OurScientificWorkTableViewController: UITableViewController {
    
    @IBOutlet weak var ourScientificWorkTableView: UITableView!
    
    var content : [OurScientificWorkCellClass] {
        let cellContent1 = OurScientificWorkCellClass(withText: OurScientificWorkContent.text1, image: #imageLiteral(resourceName: "Scientific work 2"))
        let cellContent2 = OurScientificWorkCellClass(withText: OurScientificWorkContent.text2, image: #imageLiteral(resourceName: "Scientific work 1"))
        let cellContent3 = OurScientificWorkCellClass(withText: OurScientificWorkContent.text3, image: #imageLiteral(resourceName: "Scientific work 3"))
        let cellContent4 = OurScientificWorkCellClass(withText: OurScientificWorkContent.text4, image: #imageLiteral(resourceName: "Scientific work 4"))
        let cellContent5 = OurScientificWorkCellClass(withText: OurScientificWorkContent.text5, image: #imageLiteral(resourceName: "Scientific work 8"))
        let cellContent6 = OurScientificWorkCellClass(withText: OurScientificWorkContent.text6, image: nil)
        return [cellContent1, cellContent2, cellContent3, cellContent4, cellContent5, cellContent6]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = NSLocalizedString("ourScientificWork.title", comment: "Title name - Our scientific work")
        
        //Self-Scaling  Самомасштабирование
        ourScientificWorkTableView.estimatedRowHeight = 36.0
        ourScientificWorkTableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.content.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let obj = self.content[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: OurScientificWorkTableViewCell.identifier, for: indexPath) as! OurScientificWorkTableViewCell
        
        cell.label.text = obj.title
        cell.imageInCell.image = obj.picture
        if obj.picture == nil {
            cell.imageStack.isHidden = true
        } else {
            cell.imageStack.isHidden = false
        }
        
        return cell
    }
}
