//
//  ViewController.swift
//  EggCount
//
//  Created by Admin on 7/30/16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    var time = 210
    
    func decreaseTimer(){
        
        if time > 0 {
        
            time -= 1
    
            countDisplay.text = String(time)
        
        } else {
            
            timer.invalidate()
            
        }
    }

    @IBOutlet var countDisplay: UILabel!
    
    @IBAction func playBtnPressed(_ sender: AnyObject) {
    
        timer = Timer.scheduledTimer(timeInterval: 1, target:self, selector:#selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)

    }
    
    @IBAction func pauseBtnPressed(_ sender: AnyObject) {
    
      timer.invalidate()
    
    }
  
    @IBAction func subtractBtn(_ sender: AnyObject) {
    
        if time > 10 {
        
            time -= 10
        
            countDisplay.text = String(time)
        
        } else if time <= 10 {
           
            countDisplay.text = String(time)
            
        }
    
    }
    
    @IBAction func addBtn(_ sender: AnyObject) {
    
        time += 10
        
        countDisplay.text = String(time)
    
    }
    
    @IBAction func resetBtn(_ sender: AnyObject) {
    
        time = 210
        
        countDisplay.text = String(time)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
