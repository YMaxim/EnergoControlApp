//
//  DocumentationViewController.swift
//  Energo Control
//
//  Created by Admin on 14.12.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

enum DocumentationControllerType {
    case Passports
    case Manuals
    case Certificates
    case Presentations
    case Other
}

class DocumentationViewController: UIViewController {
    
    @IBOutlet weak var passportButton: UIButton!
    @IBOutlet weak var manualButton: UIButton!
    @IBOutlet weak var certificatesButton: UIButton!
    @IBOutlet weak var presentationsButton: UIButton!
    @IBOutlet weak var otherButton: UIButton!
    
    func openControler(withTitle title: String, type: DocumentationControllerType, andData data: [DocumentationURL]) -> () {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: BaseDocumentationTableViewController.identifier) as! BaseDocumentationTableViewController
        vc.title = title
        vc.docForSave = data
        vc.contentType = type
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func passportAction(_ sender: UIButton) {
        
        let docForSave1 = DocumentationURL(cellName: PassportsDocumentationsURL.text1, cellURL: PassportsDocumentationsURL.url1)
        let docForSave2 = DocumentationURL(cellName: PassportsDocumentationsURL.text2, cellURL: PassportsDocumentationsURL.url2)
        let docForSave3 = DocumentationURL(cellName: PassportsDocumentationsURL.text3, cellURL: PassportsDocumentationsURL.url3)
        let docForSave4 = DocumentationURL(cellName: PassportsDocumentationsURL.text4, cellURL: PassportsDocumentationsURL.url4)
        let docForSave5 = DocumentationURL(cellName: PassportsDocumentationsURL.text5, cellURL: PassportsDocumentationsURL.url5)
        let docForSave6 = DocumentationURL(cellName: PassportsDocumentationsURL.text6, cellURL: PassportsDocumentationsURL.url6)
        let docForSave7 = DocumentationURL(cellName: PassportsDocumentationsURL.text7, cellURL: PassportsDocumentationsURL.url7)
        let docForSave8 = DocumentationURL(cellName: PassportsDocumentationsURL.text8, cellURL: PassportsDocumentationsURL.url8)
        let docForSave9 = DocumentationURL(cellName: PassportsDocumentationsURL.text9, cellURL: PassportsDocumentationsURL.url9)
        let docForSave10 = DocumentationURL(cellName: PassportsDocumentationsURL.text10, cellURL: PassportsDocumentationsURL.url10)
        let docForSave11 = DocumentationURL(cellName: PassportsDocumentationsURL.text11, cellURL: PassportsDocumentationsURL.url11)
        
        let data = [docForSave1, docForSave2, docForSave3, docForSave4, docForSave5, docForSave6, docForSave7, docForSave8, docForSave9, docForSave10, docForSave11]
        self.openControler(withTitle: NSLocalizedString("passport.title", comment: "Title name - Passport"), type: .Passports, andData: data)
    }
    
    @IBAction func manualAction(_ sender: UIButton) {
        let docForSave1 = DocumentationURL(cellName: ManualsDocumentationsURL.text1, cellURL: ManualsDocumentationsURL.url1)
        let docForSave2 = DocumentationURL(cellName: ManualsDocumentationsURL.text2, cellURL: ManualsDocumentationsURL.url2)
        
        let data = [docForSave1, docForSave2]
        self.openControler(withTitle: NSLocalizedString("manual.title", comment: "Title name - Manual"), type: .Manuals, andData: data)
    }
    
    @IBAction func certificatesAction(_ sender: UIButton) {
        let docForSave1 = DocumentationURL(cellName: CertificatesDocumentationsURL.text1, cellURL: CertificatesDocumentationsURL.url1)
        let docForSave2 = DocumentationURL(cellName: CertificatesDocumentationsURL.text2, cellURL: CertificatesDocumentationsURL.url2)
        let docForSave3 = DocumentationURL(cellName: CertificatesDocumentationsURL.text3, cellURL: CertificatesDocumentationsURL.url3)
        let docForSave4 = DocumentationURL(cellName: CertificatesDocumentationsURL.text4, cellURL: CertificatesDocumentationsURL.url4)
        let docForSave5 = DocumentationURL(cellName: CertificatesDocumentationsURL.text5, cellURL: CertificatesDocumentationsURL.url5)
        let docForSave6 = DocumentationURL(cellName: CertificatesDocumentationsURL.text6, cellURL: CertificatesDocumentationsURL.url6)
        let docForSave7 = DocumentationURL(cellName: CertificatesDocumentationsURL.text7, cellURL: CertificatesDocumentationsURL.url7)
        
        let data = [docForSave1, docForSave2, docForSave3, docForSave4, docForSave5, docForSave6, docForSave7]
        self.openControler(withTitle: NSLocalizedString("certificates.title", comment: "Title name - Certificates"), type: .Certificates, andData: data)
    }
    
    @IBAction func presentationsAction(_ sender: UIButton) {
        let docForSave1 = DocumentationURL(cellName: PresentationsDocumentationsURL.text1, cellURL: PresentationsDocumentationsURL.url1)
        let docForSave2 = DocumentationURL(cellName: PresentationsDocumentationsURL.text2, cellURL: PresentationsDocumentationsURL.url2)
        let docForSave3 = DocumentationURL(cellName: PresentationsDocumentationsURL.text3, cellURL: PresentationsDocumentationsURL.url3)
        let docForSave4 = DocumentationURL(cellName: PresentationsDocumentationsURL.text4, cellURL: PresentationsDocumentationsURL.url4)
        
        let data = [docForSave1, docForSave2, docForSave3, docForSave4]
        self.openControler(withTitle: NSLocalizedString("presentations.title", comment: "Title name - Presentations"), type: .Presentations, andData: data)
    }
    
    @IBAction func otherAction(_ sender: UIButton) {
        let docForSave1 = DocumentationURL(cellName: OtherDocumentationsURL.text1, cellURL: OtherDocumentationsURL.url1)
        let docForSave2 = DocumentationURL(cellName: OtherDocumentationsURL.text2, cellURL: OtherDocumentationsURL.url2)
        let docForSave3 = DocumentationURL(cellName: OtherDocumentationsURL.text3, cellURL: OtherDocumentationsURL.url3)
        let docForSave4 = DocumentationURL(cellName: OtherDocumentationsURL.text4, cellURL: OtherDocumentationsURL.url4)
        let docForSave5 = DocumentationURL(cellName: OtherDocumentationsURL.text5, cellURL: OtherDocumentationsURL.url5)
        let docForSave6 = DocumentationURL(cellName: OtherDocumentationsURL.text6, cellURL: OtherDocumentationsURL.url6)
        let data = [docForSave1, docForSave2, docForSave3, docForSave4, docForSave5, docForSave6]
        self.openControler(withTitle: NSLocalizedString("other.title", comment: "Title name - Other"), type: .Other, andData: data)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = NSLocalizedString("documentation.title", comment: "Title name - Documentation")
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    
}
