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
    
    @IBAction func updateImage(sender: AnyObject) {
        
        alienImage.image = UIImage(named: "frame2.png")
        
        
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

