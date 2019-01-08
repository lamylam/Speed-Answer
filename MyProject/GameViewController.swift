//
//  TimerViewController.swift
//  MyProject
//
//  Created by Admin on 07/01/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class GameViewController:UIViewController {

    var score:Int = 0
    var slideshowTimer:Timer?
    var answer:Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    func gameTimer() {
        
        
        self.slideshowTimer = Timer.scheduledTimer(withTimeInterval: 60, repeats: true) { (_) in
            
        }
        
    }
    
    
    
    
    func scoreCalculate()-> Int {
        if isCorrectAnswer(){
            
        }

        return score
        
    }

    
    func isCorrectAnswer()-> Bool {
       
        return answer
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
