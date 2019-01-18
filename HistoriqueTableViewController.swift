//
//  HistoriqueTableViewController.swift
//  MyProject
//
//  Created by Admin on 17/01/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class HistoriqueTableViewController: UITableViewController {
    
    //var _scoreH:[Int]=[0,0,0,0,0,0,0]
   // var dateScoreH:[String]=["","","","","","",""]
    
    
    var _bestScore:Int=UserDefaults.standard.integer(forKey: "bs")
  
   var _score:[Int]=[0,0,0,0,0,0,0]
     var _tabDate:[String]=["","","","","","",""]
  
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.array(forKey: "listeScore")==nil{
            UserDefaults.standard.set(_score, forKey: "listeScore")
        }
        if UserDefaults.standard.array(forKey: "dateScore")==nil{
            UserDefaults.standard.set(_tabDate, forKey: "dateScore")
        }
        
         _score=UserDefaults.standard.array(forKey: "listeScore") as! [Int]
         _tabDate=UserDefaults.standard.array(forKey: "dateScore") as! [String]

        
        print( UserDefaults.standard.array(forKey: "listeScore"))
        // Uncomment the following line to preserve selection between presentations
         print( UserDefaults.standard.array(forKey: "dateScore"))
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let title:String
        if section==0{
            title="Meilleur score"}
        else{
            title="Historique des parties"}
        
    return title
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let rowCount:Int
        if section==0{
              rowCount=1
        }else{
          
            
            rowCount=_score.count
        }
        // #warning Incomplete implementation, return the number of rows
        return rowCount
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idPause2", for: indexPath)

        if let titleLabel=cell.textLabel{
            if indexPath.section==0{
                titleLabel.text=String(_bestScore)
                cell.detailTextLabel?.text=UserDefaults.standard.string(forKey: "date_bs")
                
            }
                else{
                cell.detailTextLabel?.text=_tabDate[indexPath.row]
                
                titleLabel.text=String(_score[indexPath.row])
            
                }
            
            
        }
        
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
