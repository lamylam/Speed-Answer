//
//  ViewController.swift
//  MyProject
//
//  Created by Admin on 03/01/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        startParty?.layer.cornerRadius=30
        startParty?.clipsToBounds=true
        
        rulesButton?.layer.cornerRadius=30
        rulesButton?.clipsToBounds=true
        
    }
   

    @IBOutlet weak var timerButton: UILabel!
    @IBOutlet weak var scoreButton: UILabel!
    @IBOutlet weak var startParty: UIButton!
    
    @IBOutlet weak var rulesButton: UIButton!
    @IBAction func startButton() {
    
        
    }
    
}

