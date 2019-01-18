//
//  ViewController.swift
//  MyProject
//
//  Created by Admin on 03/01/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var bestSc:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        startParty?.layer.cornerRadius=30
        startParty?.clipsToBounds=true
        
        rulesButton?.layer.cornerRadius=30
        rulesButton?.clipsToBounds=true
        ui_score.text=UserDefaults.standard.string(forKey: "bs")
        
    }
   

    @IBOutlet weak var ui_score: UILabel!
    @IBOutlet weak var timerButton: UILabel!
  
    @IBOutlet weak var startParty: UIButton!
    
    @IBOutlet weak var rulesButton: UIButton!
    @IBAction func startButton() {
    
        
    }
    
    @IBAction func unwindToBegining(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
    
    
}

