//
//  ViewController.swift
//  Animations
//
//  Created by Jena Grafton on 10/14/15.
//  Copyright © 2015 Bella Voce Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var alienImage: UIImageView!
    
    var counter = 1
    
    var timer = NSTimer()
    
    var isAnimating = true
    
    @IBAction func updateImage(sender: AnyObject) {
        
        if isAnimating == true {
            
            timer.invalidate()
            
            isAnimating = false
            
        } else {
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            
            isAnimating = true
            
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
        
    }
    
    func doAnimation() {
        
        if counter == 5 {
            
            counter = 1
            
        }else {
            
            counter++
            
        }
        
        alienImage.image = UIImage(named: "frame\(counter).png")

        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    
    override func viewDidLayoutSubviews() {
        
        alienImage.frame =  CGRectMake(100, 20, 0, 0)
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            
            self.alienImage.frame = CGRectMake(100, 20, 100, 200)

            
        })
        
        
    }
*/

}

