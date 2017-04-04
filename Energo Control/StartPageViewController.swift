//
//  StartPageViewController.swift
//  Energo Control
//
//  Created by Admin on 08.11.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class StartPageViewController: UIViewController {
    
    @IBOutlet weak var energoControlImage: UIImageView!
    @IBOutlet weak var aboutCompanyButton: UIButton!
    @IBOutlet weak var energyMetersButton: UIButton!
    @IBOutlet weak var ourScientificWorkButton: UIButton!
    @IBOutlet weak var documentationButton: UIButton!
    @IBOutlet weak var logoConstraintY: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutCompanyButton.alpha = 0.0
        energyMetersButton.alpha = 0.0
        ourScientificWorkButton.alpha = 0.0
        documentationButton.alpha = 0.0
        
        DispatchQueue.main.async {
            UIView.animate(withDuration: 1.5, delay: 2.0, options: .curveLinear, animations: {
                self.logoConstraintY.constant = -175.0
                self.view.setNeedsLayout()
                self.view.layoutIfNeeded()
            }, completion: nil)
        }
        
        UIView.animate(withDuration: 1.5, delay: 3.0, options: UIViewAnimationOptions.showHideTransitionViews, animations: {
            self.aboutCompanyButton.alpha = 1.0
        }, completion: nil)
        
        UIView.animate(withDuration: 1.5, delay: 2.6, options: UIViewAnimationOptions.showHideTransitionViews, animations: {
            self.energyMetersButton.alpha = 1.0
        }, completion: nil)
        
        UIView.animate(withDuration: 1.5, delay: 3.4, options: UIViewAnimationOptions.showHideTransitionViews, animations: {
            self.ourScientificWorkButton.alpha = 1.0
        }, completion: nil)
        
        UIView.animate(withDuration: 1.5, delay: 3.8, options: UIViewAnimationOptions.showHideTransitionViews, animations: {
            self.documentationButton.alpha = 1.0
        }, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.title = ""
        
        // Hide the navigation bar on this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
