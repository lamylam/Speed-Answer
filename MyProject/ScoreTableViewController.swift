//
//  PauseTableViewController.swift
//  MyProject
//
//  Created by Admin on 06/01/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit
//import RealmSwift


class ScoreTableViewController: UITableViewController {
  var  scoreTable:Int=0
    let section = ["Best Score", "les 10 derniers scores"]
    let items=[["4"],["3","22","55","23"]]
    
/*   var _scoreList:Results<DataBase>!
    var _realm:Realm!

     var listePause:[String] = [ "Continuer", "Quitter" ]
    */
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    /*Realm.Configuration.defaultConfiguration.deleteRealmIfMigrationNeeded = true
        _realm = try! Realm()
 
        print("REALM : \(_realm.configuration.fileURL)")
        _scoreList = _realm.objects(DataBase.self)
        */
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    
    
   override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
    return self.section.count
    }
    
   
        
    

   /* override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.section\[section\]
    }
*/
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pauseId", for: indexPath)

        // Configure the cell...

        
       // cell.textLabel?.text=ligne.name
       // cell.detailTextLabel?.text=ligne.phone
       // cell.textLabel?.text=listePause[indexPath.row]
       cell.textLabel?.text=UserDefaults.standard.string(forKey: "bs")
        
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date / server String
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let myString = formatter.string(from: Date()) // string purpose I add here
        // convert your string to date
        let yourDate = formatter.date(from: myString)
        //then again set the date format whhich type of output you need
        formatter.dateFormat = "dd-MMM-yyyy"
        // again convert your date to string
        let myStringafd = formatter.string(from: yourDate!)
        UserDefaults.standard.set(myStringafd, forKey: "date")
        print(myStringafd)
        
        
     cell.detailTextLabel?.text=UserDefaults.standard.string(forKey: "date")
        
        
        return cell
       
            
        
        
        
        
        
        
        
    }
    
   
    
 
    /*@IBAction func unwindToShowList(_ unwindSegue: UIStoryboardSegue) {
        if let sourceViewController = unwindSegue.source as? AddShowViewController,
            let newShow = sourceViewController.show {
            try! _realm.write {
                _realm.add(newShow)
            }
            tableView.insertRows(at: [IndexPath(row: _showList.count - 1, section: 0)], with: .automatic)
        }
        
    }*/
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



/*
 
 //
 //  TableViewController.swift
 //  TableView
 //
 //  Created by Admin on 03/01/2019.
 //  Copyright © 2019 Admin. All rights reserved.
 //
 
 import UIKit
 
 class TableViewController: UITableViewController {
 
 var names: [String] = ["Jean", "Paul", "Dupont", "Tintin", "Milou", "Brayan", "Pierre", "Mady", "Sophie", "Elena", "Pascal", "Rayan", "Albert", "Fifi" , "Grace", "Melanie", "Fabien", "Charles", "Alba" , "Anneline", "Alvaro", "Marc" , "Mylene"]
 
 var contactList:[Contact]=[]
 
 override func viewDidLoad() {
 super.viewDidLoad()
 
 
 
 // Uncomment the following line to preserve selection between presentations
 // self.clearsSelectionOnViewWillAppear = false
 
 // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
 // self.navigationItem.rightBarButtonItem = self.editButtonItem
 
 contactList.append(Contact.init(name: "Marc", phone: "0987"))
 contactList.append(Contact.init(name: "Dupont", phone: "0987"))
 contactList.append(Contact.init(name: "Tintin", phone: "0987"))
 contactList.append(Contact.init(name: "Milou", phone: "0987"))
 }
 
 // MARK: - Table view data source
 
 override func numberOfSections(in tableView: UITableView) -> Int {
 // #warning Incomplete implementation, return the number of sections
 return 1
 }
 
 override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
 // #warning Incomplete implementation, return the number of rows
 return contactList.count
 }
 
 
 override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 let cell = tableView.dequeueReusableCell(withIdentifier: "idTable", for: indexPath)
 names.sort()
 
 // Configure the cell...
 /*cell.textLabel?.text="Contact \(indexPath.row+1)"
 cell.detailTextLabel?.text=names[indexPath.row]
 cell.imageView?.image=#imageLiteral(resourceName: "girl-2.png")*/
 
 let ligne=contactList[indexPath.row]
 
 cell.textLabel?.text=ligne.name
 cell.detailTextLabel?.text=ligne.phone
 cell.imageView?.image=#imageLiteral(resourceName: "girl-2.png")
 return cell
 }
 
 
 /*
 // Override to support conditional editing of the table view.
 override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
 // Return false if you do not want the specified item to be editable.
 return true
 }
 */
 
 /*
 // Override to support editing the table view.
 override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
 if editingStyle == .delete {
 // Delete the row from the data source
 tableView.deleteRows(at: [indexPath], with: .fade)
 } else if editingStyle == .insert {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */
 
 /*
 // Override to support rearranging the table view.
 override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
 
 }
 */
 
 /*
 // Override to support conditional rearranging of the table view.
 override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
 // Return false if you do not want the item to be re-orderable.
 return true
 }
 */
 
 
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 
 
 
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 if let destination = segue.destination as? ViewController,
 let selected = tableView.indexPathForSelectedRow
 
 
 {
 
 destination.nameSelected=contactList[selected.row].name
 
 }
 
 }
 
 
 }

 */
