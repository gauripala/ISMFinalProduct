//
//  TrEntriesViewController.swift
//  ISMFinalProduct
//
//  Created by Gauri Pala on 4/7/22.
//

import Foundation
import UIKit

class TrEntriesViewController: UITableViewController {
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        var items: [Item2] = []
    var currentDate = ""
    var currentTitle = ""
    var currentEntry = ""
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            self.title = "My Entries"
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
            self.tableView.estimatedRowHeight = 44
            self.tableView.rowHeight = UITableView.automaticDimension
            
        }
    
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if(segue.identifier=="triggerViewEntry"){
                let viewEn = segue.destination as! ViewEntryViewController
                viewEn.date = String(currentDate)
                viewEn.titleEntry = currentTitle
                viewEn.entry = currentEntry
            }
        }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        override func viewWillAppear(_ animated: Bool) {
            fetchData()
        }
        
        func fetchData() {
            
            do {
                items = try context.fetch(Item2.fetchRequest())
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch {
                print("Couldn't Fetch Data")
            }
            
        }
    
    

    }


    extension TrEntriesViewController {
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
            
            let date = items.reversed()[indexPath.row].date
            //            let time = items.reversed()[indexPath.row].time
            
            
            cell.textLabel?.text = items.reversed()[indexPath.row].title
            for i in items {
                print(i)
            }
            print("-----")
           // print(items[0].entry)
            if let date = date {
//                let timeStamp = "Added on \(date) at \(time)"
                let timeStamp = "Added on \(date)"
                cell.detailTextLabel?.text = timeStamp

            }
            return cell
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            return items.count
            
        }
        
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            currentDate = items[indexPath.row].date!
            currentTitle = items[indexPath.row].title!
            currentEntry = items[indexPath.row].entry!
            self.performSegue(withIdentifier: "viewEntry", sender: self)
            print(items[indexPath.row].entry!)
            tableView.deselectRow(at: indexPath, animated: true)
        }
        
//        override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
//
//            let delete = UITableViewRowAction(style: .default, title: "Delete") { (action, indexPath) in
//                // delete item at indexPath
//
//                let item = self.items[indexPath.row]
//                self.context.delete(item)
//                (UIApplication.shared.delegate as! AppDelegate).saveContext()
//
//                self.items.remove(at: indexPath.row)
//                print(self.items)
//                tableView.deleteRows(at: [indexPath], with: .fade)
//
//            }
//
//            delete.backgroundColor = UIColor(red: 0/255, green: 177/255, blue: 106/255, alpha: 1.0)
//
//
//            return [delete]
//
//        }
        
        override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                //print(items.count - indexPath.row)
                let item = items[items.count - 1 - indexPath.row]
                print(item)
                self.context.delete(item)
                items.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)

                (UIApplication.shared.delegate as! AppDelegate).saveContext()
            }
        }
        
}
