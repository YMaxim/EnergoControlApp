//
//  AboutCompanyViewController.swift
//  Energo Control
//
//  Created by Admin on 08.11.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit
import SafariServices

class AboutCompanyController: UIViewController {
    
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var mapButton: UIButton!
    @IBOutlet weak var textAboutCompany: UILabel!
    @IBOutlet weak var companyAddress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = NSLocalizedString("aboutCompany.title", comment: "Title name - About company")
        
        textAboutCompany.adjustsFontSizeToFitWidth = true
        textAboutCompany.text = NSLocalizedString("aboutCompanyText", comment: "Text about company")
        
        companyAddress.adjustsFontSizeToFitWidth = true
        companyAddress.text = NSLocalizedString("companyAddress", comment: "Company address")
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    @IBAction func touchFacebook(sender: UIButton) {
        if let url = NSURL(string: "https://www.facebook.com/EnergoControlUA/") {
            let safariView = SFSafariViewController(url: url as URL, entersReaderIfAvailable: true)
            present(safariView, animated: true, completion: nil)
        }
    }
}
