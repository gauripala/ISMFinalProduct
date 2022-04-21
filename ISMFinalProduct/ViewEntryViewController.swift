//
//  ViewEntryViewController.swift
//  ISMFinalProduct
//
//  Created by Gauri Pala on 3/30/22.
//

import Foundation
import UIKit

class ViewEntryViewController: UIViewController {
    
   
    var date = ""
    var titleEntry = ""
    var entry = ""
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var entryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateLabel.text = date
        titleLabel.text = titleEntry
        entryLabel.text = entry
    }
}
