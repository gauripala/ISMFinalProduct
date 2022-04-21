//
//  TNewEntryViewController.swift
//  ISMFinalProduct
//
//  Created by Gauri Pala on 3/20/22.
//

import Foundation
import UIKit

class TNewEntryViewController: UIViewController, UITextViewDelegate {
    
    
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var entryTextView: UITextView!
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func add(_ sender: Any) {
        guard let enteredText = entryTextView?.text else {
            return
        }
        
        guard let enteredTitle = titleField?.text else {
            return
        }
        
        if enteredText.isEmpty || entryTextView?.text == "Type anything..." || enteredTitle.isEmpty{
            print("No Data")
            
            let alert = UIAlertController(title: "Please Fill in All Fields", message: "Your title or entry was left blank.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default) { action in
                
            })
            
            self.present(alert, animated: true, completion: nil)
            
        } else {
            
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateFormat = "MM/dd/YY"
            let currentDate = formatter.string(from: date)
//            
//            let timeFormatter = DateFormatter()
//            timeFormatter.timeStyle = .short
//            let currentTime = timeFormatter.string(from: date)
            
            guard let entryText = entryTextView?.text else {
                return
            }
            
            guard let titleText = titleField?.text else {
                return
            }
            
            
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let newEntry = Item(context: context)
            newEntry.entry = entryText
            newEntry.date = currentDate
            newEntry.title = titleText
//            newEntry.time = currentTime
            
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            dismiss(animated: true, completion: nil)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        entryTextView?.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
    }
        
        
    func textViewDidBeginEditing(_ textView: UITextView) {
            textView.text = ""
            textView.textColor = UIColor.black
    }
        
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
            if (text == "\n") {
                textView.resignFirstResponder()
                return false
            }
            return true
    }
    
    
}
