//
//  BaseTableViewController.swift
//  Energo Control
//
//  Created by Admin on 28.03.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit
import SafariServices

class BaseDocumentationTableViewController: UITableViewController, UISearchResultsUpdating {
    
    class var identifier : String {
        return String(describing: self)
    }
    
    var contentType : DocumentationControllerType = .Passports
    var docForSave : [DocumentationURL] = [DocumentationURL]()
    var searchResult: [DocumentationURL] = []
    var searchControler: UISearchController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Search Controler
        searchControler = UISearchController(searchResultsController: nil)
        tableView.tableHeaderView = searchControler.searchBar
        searchControler.searchResultsUpdater = self
        searchControler.dimsBackgroundDuringPresentation = false
        searchControler.searchBar.placeholder = NSLocalizedString("searchDocumentationText", comment: "Text in seachBar")
        searchControler.searchBar.tintColor = UIColor.black
        definesPresentationContext = true
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        func destinationURL() -> String {
            if searchControler.isActive {
                return searchResult[indexPath.row].cellURL
            } else {
                return self.docForSave[indexPath.row].cellURL
            }
        }
        
        let downloadMenu = UIAlertController(title: nil, message: NSLocalizedString("questionDownload", comment: ""), preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: NSLocalizedString("cancelButton", comment: "Download button: Cancel"), style: .cancel, handler: nil)
        let downloadAction = UIAlertAction(title: NSLocalizedString("downloadButton", comment: "Download button: Download"), style: .default, handler: {_ -> Void in
            if let url = NSURL(string: destinationURL()) {
                let safariView = SFSafariViewController(url: url as URL, entersReaderIfAvailable: true)
                self.present(safariView, animated: true, completion: nil)
            }})
        
        downloadMenu.addAction(downloadAction)
        downloadMenu.addAction(cancelAction)
        
        self.present(downloadMenu, animated: true, completion: nil)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchControler.isActive {
            return searchResult.count
        } else {
            return self.docForSave.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BaseDocumentationTableViewCell.identifier, for: indexPath) as! BaseDocumentationTableViewCell
        let doc = (searchControler.isActive) ? searchResult[indexPath.row] : self.docForSave[indexPath.row]
        cell.label?.text = doc.cellName
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        if searchControler.isActive {
            return false
        } else {
            return true
        }
    }

    func updateSearchResults(for searchController: UISearchController) {
        if let searchText = searchControler.searchBar.text {
            filterContent(searchText: searchText)
            tableView.reloadData()
        }
    }
    
    func filterContent(searchText: String) {
        searchResult = docForSave.filter({ (docForSave: DocumentationURL) -> Bool in
            let nameMatch = docForSave.cellName.range(of: searchText, options: NSString.CompareOptions.caseInsensitive)
            return nameMatch != nil
        })
    }
}
