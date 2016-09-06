//
//  MainViewController.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 30/12/15.
//  Copyright © 2015 Darko Smoljo. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func playMap(sender: AnyObject) {
        self.performSegueWithIdentifier("playMap", sender: nil)
    }
}