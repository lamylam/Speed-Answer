//
//  ScoreViewController.swift
//  MyProject
//
//  Created by Admin on 14/01/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit
import SwiftySound

class ScoreViewController: UIViewController {
    var myScore:Int=0
     var myBestScore:Int=0
    var starAnim:UIViewPropertyAnimator?
    var dynamStar:UIDynamicAnimator?
    
    @IBOutlet weak var labelSC: UILabel!
    @IBOutlet weak var bestScoreLabel: UILabel!
    
    @IBOutlet weak var ui_star1: UIImageView!
    @IBOutlet weak var cs_imageHeight: NSLayoutConstraint!
    
    @IBOutlet weak var star2: UIImageView!
    
    @IBOutlet weak var ui_go: UIButton!
    
    
    @IBAction func gobutton() {
        
        
        
        UIView.animate(withDuration: 2.0, animations: { () -> Void in
            self.star2.backgroundColor = UIColor.white
            //star2.center = containerView.center
            self.star2.startAnimating()
        })
        
        
     /*   starAnim=UIViewPropertyAnimator(duration: 3, curve: .easeIn){
            
            self.star2.startAnimating()
        }*/
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        Sound.play(file: "ScoreSound.wav")
      
        
       
        // Do any additional setup after loading the view.
        labelSC.text=String(myScore)
            bestScoreLabel.text=String(UserDefaults.standard.integer(forKey: "bs"))
        Timer.scheduledTimer(withTimeInterval: 4, repeats: false) { (_) in
            self.performSegue(withIdentifier: "id_home", sender: nil)
        }
        
        UIView.animate(withDuration: 2.0, animations: { () -> Void in
            self.star2.backgroundColor = UIColor.white
            //star2.center = containerView.center
            self.star2.startAnimating()
        })
        
    }
    
   //
  
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
 
 @IBOutlet weak var cs_imageHeight: NSLayoutConstraint!
 var _animation:UIViewPropertyAnimator?
 
 @IBAction func hideShowImage(_ sender: Any) {
 if let animation = _animation {
 if animation.isRunning {
 animation.pauseAnimation()
 } else {
 animation.startAnimation()
 }
 } else {
 _animation = UIViewPropertyAnimator(duration: 2, curve: .easeIn) {
 if self.cs_imageHeight.constant == 0 {
 self.cs_imageHeight.constant = 200
 } else {
 self.cs_imageHeight.constant = 0
 }
 self.view.layoutIfNeeded()
 //self.ui_showImageView.alpha = 0
 }
 
 
 _animation?.addCompletion({ (_) in
 self._animation = nil
 })
 
 _animation!.startAnimation()
 }
 }
 */
