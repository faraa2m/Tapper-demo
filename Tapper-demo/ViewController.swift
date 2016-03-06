//
//  ViewController.swift
//  Tapper-demo
//
//  Created by Faraazuddin Mohammed on 3/6/16.
//  Copyright © 2016 Faraazuddin Mohammed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt : UITextField!
    @IBOutlet weak var playBtn : UIButton!
    
    @IBOutlet weak var tapBtn : UIButton!
    @IBOutlet weak var tapsLabel : UILabel!
    
    //Properties
    var maxTaps : Int = 0
    var curTaps : Int = 0
    
    @IBAction func onCoinTapped(sender: UIButton!){
        
        curTaps+=1
        updateTapsLabel()
        
        if isGameOver(){
            restartGame()
        }
    }
    
    @IBAction func onPlayBtnPressed(sender:UIButton!){
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            tapBtn.hidden = false
            tapsLabel.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            curTaps = 0
            
            updateTapsLabel()
        }
    }
    
    func updateTapsLabel(){
        tapsLabel.text = "\(curTaps) Taps"
    }
    
    func isGameOver()->Bool{
        if curTaps >= maxTaps{
            return true
        }
        return false
    }
    
    func restartGame(){
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapBtn.hidden = true
        tapsLabel.hidden = true

        
    }
}

