//
//  PausePage.swift
//  MyProject
//
//  Created by Admin on 06/01/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import Foundation
import UIKit
import SwiftySound

class PausePage: UIViewController {
    var timer2:Timer?=nil
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  

    
    @IBOutlet weak var continuer: UIButton!
    
    @IBOutlet weak var restartButton: UIButton!
    
    @IBOutlet weak var quitButton: UIButton!
    @IBAction func restartButton(_ sender: Any) {
        
    }
    @IBOutlet weak var aide: UIButton!
    
    
    @IBAction func continuerButton() {
   
        timer2?.isValid
    }
   
    @IBOutlet weak var UIsound: UISwitch!
    
    @IBAction func soundButton() {
        
        if UIsound.isOn {
            Sound.enabled = true
    
        }else{
            Sound.enabled = false
        }
        
    }
    
}
