//
//  TimerViewController.swift
//  MyProject
//
//  Created by Admin on 07/01/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit
import SwiftySound

class GameViewController:UIViewController {
    
    var answerButton:Bool?
    var delay:Double=30
    var countTime:Int=30
    var randomImageView:Int?
    
    var secondes:Int=0
    var score:Int = 0
    var timer:Timer?
    var answer:Bool = true
    var constantWin = 500
    var nameProperties:[Image]=[]
    var a:Bool=true
    var i:Int=0
    var bestScore:Int=0
    var _score:[Int]=[0,0,0,0,0,0,0]
    var dateScore:[String]=["","","","","","",""]
    var nbBonneReponse:Int=0
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var answerImage: UIImageView!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    @IBAction func pause() {
        
        timer?.invalidate()
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // deleteUserDefaults(nameBd: "bs")

        if UserDefaults.standard.array(forKey: "listeScore")==nil{
            UserDefaults.standard.set(_score, forKey: "listeScore")
        }
        if UserDefaults.standard.array(forKey: "dateScore")==nil{
            UserDefaults.standard.set(dateScore, forKey: "dateScore")
        }
        print(UserDefaults.standard.array(forKey: "dateScore"))
        gameTimer()
        a = putRandomImage()
        scoreLabel.text=String(score)
    }
    
    func  gameTimer() {
        timer =
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self ](_) in
                guard let gameVC = self else {return}
                
                gameVC.timeLabel.text=String(gameVC.countTime)
                
                gameVC.countTime-=1
                if gameVC.countTime == -1 {
                    gameVC.timer?.invalidate()
                    
                   self?.bestScore = UserDefaults.standard.integer(forKey: "bs")
                    if self!.score>(self?.bestScore)!
                    {
                        UserDefaults.standard.set(self?.score, forKey: "bs")
                        self?.saveDateBestScore()
                   
 
                    }
                    print("gg")
                    self?.addScoreToTable(newSc: (self?.score)!)
            print("gg")
                    
                    self?.performSegue(withIdentifier: "openScore", sender: nil)
                }
        }
    }
    
    func imageDisappear(){
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { (_) in
            
            self.answerImage.image=nil
        }
        
    }
    
    
    func putRandomImage()->Bool{
        clearImages()
        let randomTableImage = Int.random(in: 0 ... 42)
        let randomLocation=Int.random(in: 1...3)
        let image = UIImage(named: "face\(randomTableImage)")
        switch randomLocation {
            
            
        case 1: do {image1.image=image
            
            }
        case 2:image2.image=image
            
        case 3:image3.image=image
        default:image1.image=image
            
        }
        
        let result = fillProperties(indiceLigne: randomTableImage, indiceColonne: randomLocation)
        return result
    }
    
    func fillProperties(indiceLigne: Int,indiceColonne:Int)->Bool{
        
        var correctAnswer:Bool=true
        
        
        
        nameProperties.append(Image(index: 0, fSourit: false, hTriste: true, hLunettes:true))
        nameProperties.append(Image(index:1,fSourit: true,hTriste: true,hLunettes: true))
        nameProperties.append(Image(index:2,fSourit: false,hTriste: false,hLunettes: true))
        nameProperties.append(Image(index:3,fSourit: false,hTriste: false,hLunettes: true))
        nameProperties.append(Image(index:4,fSourit: true,hTriste: true,hLunettes: false))
        nameProperties.append(Image(index:5,fSourit: true,hTriste: true,hLunettes: true))
        nameProperties.append(Image(index:6,fSourit: false,hTriste: false,hLunettes: false))
        nameProperties.append(Image(index:7,fSourit: false,hTriste: false,hLunettes: true))
        nameProperties.append(Image(index:8,fSourit: false,hTriste: false,hLunettes: false))
        nameProperties.append(Image(index:9,fSourit: true,hTriste: false,hLunettes: false))
        nameProperties.append(Image(index:10,fSourit: true,hTriste: false,hLunettes: false))
        nameProperties.append(Image(index:11,fSourit: false,hTriste: false,hLunettes: false))
        nameProperties.append(Image(index:12,fSourit: false,hTriste: false,hLunettes: true))
        nameProperties.append(Image(index:13,fSourit: true,hTriste: true,hLunettes: false))
        nameProperties.append(Image(index:14,fSourit: false,hTriste: false,hLunettes: false))
        nameProperties.append(Image(index:15,fSourit: false,hTriste: true,hLunettes: false))
        nameProperties.append(Image(index:16,fSourit: true,hTriste: true,hLunettes: false))
        nameProperties.append(Image(index:17,fSourit: false,hTriste: false,hLunettes: false))
        nameProperties.append(Image(index:18,fSourit: false,hTriste: true,hLunettes: true))
        nameProperties.append(Image(index:19,fSourit: true,hTriste: true,hLunettes: true))
        nameProperties.append(Image(index:20,fSourit: true,hTriste: false,hLunettes: true))
        nameProperties.append(Image(index:21,fSourit: false,hTriste: true,hLunettes: true))
        nameProperties.append(Image(index:22,fSourit: true,hTriste: true,hLunettes: true))
        nameProperties.append(Image(index:23,fSourit: true,hTriste: false,hLunettes: false))
        nameProperties.append(Image(index:24,fSourit: false,hTriste: true,hLunettes: false))
        nameProperties.append(Image(index:25,fSourit: false,hTriste: false,hLunettes: false))
        nameProperties.append(Image(index:26,fSourit: true,hTriste: false,hLunettes: false))
        nameProperties.append(Image(index:27,fSourit: true,hTriste: true,hLunettes: true))
        nameProperties.append(Image(index:28,fSourit: true,hTriste: false,hLunettes: true))
        nameProperties.append(Image(index:29,fSourit: false,hTriste: false,hLunettes:false))
        nameProperties.append(Image(index:30,fSourit: true,hTriste: false,hLunettes: true))
        nameProperties.append(Image(index:31,fSourit: false,hTriste: true,hLunettes: true))
        nameProperties.append(Image(index:32,fSourit: false,hTriste: true,hLunettes: false))
        nameProperties.append(Image(index:33,fSourit: true,hTriste: false,hLunettes: false))
        nameProperties.append(Image(index:34,fSourit: false,hTriste: true,hLunettes: false))
        nameProperties.append(Image(index:35,fSourit: false,hTriste: true,hLunettes: true))
        nameProperties.append(Image(index:36,fSourit: true,hTriste: false,hLunettes: true))
        nameProperties.append(Image(index:37,fSourit: false,hTriste: false,hLunettes:false))
        nameProperties.append(Image(index:38,fSourit: false,hTriste: false,hLunettes:false))
        nameProperties.append(Image(index:39,fSourit: false,hTriste: true,hLunettes: false))
        nameProperties.append(Image(index:40,fSourit: true,hTriste: false,hLunettes: false))
        nameProperties.append(Image(index:41,fSourit: false,hTriste: false,hLunettes:false))
        nameProperties.append(Image(index:42,fSourit: false,hTriste: false,hLunettes:false))
        
        
        
        if indiceColonne==1{
            correctAnswer =  nameProperties[indiceLigne].femmeSourit
        }else if indiceColonne==2{
            correctAnswer=nameProperties[indiceLigne].hommeTriste
            
        }else{
            correctAnswer=nameProperties[indiceLigne].hommeLunettes
        }
        
        
        return correctAnswer
    }
    
    
    func clearImages(){
        
        image1.image=nil
        image2.image=nil
        image3.image=nil
    }
    
    
    @IBAction func yesAnswer(){
        answerButton=true
        sendMyAnswer(answerB: answerButton!)
        a = putRandomImage()
    }
    
    
    @IBAction func noAnswer() {
        answerButton=false
        sendMyAnswer(answerB: answerButton!)
        a = putRandomImage()
        
    }
    
    func sendMyAnswer(answerB:Bool){
        
        if a==answerB{
            self.nbBonneReponse+=1
            self.score+=self.constantWin
            self.scoreLabel.text=String(self.score)
            answerImage.image=(UIImage(named: "correct"))
            imageDisappear()
            Sound.play(file: "correctSound.mp3")
            if     self.nbBonneReponse%3==0{
                self.constantWin=self.constantWin+550
            }

        } else {
            self.nbBonneReponse=0

            answerImage.image=(UIImage(named: "no-stopping"))
               Sound.play(file: "incorrectSound.wav")
            imageDisappear()
        }
       
    }
    
    func getStringDate()->String{
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date / server String
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        
        let myString = formatter.string(from: Date()) // string purpose I add here
        // convert your string to date
        let yourDate = formatter.date(from: myString)
        //then again set the date format whhich type of output you need
        formatter.dateFormat = "dd-MMM-yyyy"
        // again convert your date to string
        let myStringafd = formatter.string(from: yourDate!)
        return myString
    }
    
    @IBAction func unwindToPrevious(_ unwindSegue: UIStoryboardSegue) {
        _ = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if let destination = segue.destination as? ScoreViewController{
            
           destination.myScore=score
           destination.myBestScore=bestScore }
        
           if let destination2 = segue.destination as? ViewController{
            destination2.bestSc=bestScore
  }
    }
  
    func saveDateBestScore(){
        
        let myStringafd=getStringDate()
        UserDefaults.standard.set(myStringafd, forKey: "date_bs")
        print(myStringafd)
        

    }
   
    func deleteUserDefaults(nameBd:String){
        UserDefaults.standard.removeObject(forKey: nameBd)
    }
    func addScoreToTable(newSc:Int){
       print(UserDefaults.standard.array(forKey: "listeScore"))
       // UserDefaults.standard.set(["f","f","ff","fff","gg","rrrr"], forKey: "dateScore")
        var  tab:[Int]=UserDefaults.standard.array(forKey: "listeScore") as! [Int]
    print(UserDefaults.standard.array(forKey: "dateScore"))

        var tabDate:[String]=UserDefaults.standard.array(forKey:"dateScore") as! [String]
        
        print(tab)
        var j:Int
        let size=tab.count-2
        let size2=tabDate.count-2
        print(size)
        var newTab:[Int]=[0,0,0,0,0,0,0]
        var newTabDate:[String]=["","","","","","","",""]
        for i in 0...size {
            
            j=i+1
            print(j)
            newTab[j] = tab[i]
            print(j)
            print(tab[i])
            print(i)
            print(newTab[j])
        }
        
        for i in 0...size2 {
            
            j=i+1
            print(j)
            newTabDate[j] = tabDate[i]
            print(j)
            print(tabDate[i])
            print(i)
            print(newTabDate[j])
        }
        
        newTab[0]=newSc
          newTabDate[0]=getStringDate()
        UserDefaults.standard.set(newTab, forKey: "listeScore")
        UserDefaults.standard.set(newTabDate, forKey: "dateScore")
        
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

