//
//  ViewController.swift
//  Stop Watch
//
//  Created by Divine Davis on 8/27/15.
//  Copyright (c) 2015 Divine's Ideas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var time: UILabel!
    var count = 0
    var timer = NSTimer()
    
    @IBAction func play(sender: UIBarButtonItem) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    @IBAction func pause(sender: UIBarButtonItem) {
        timer.invalidate()
    }
    @IBAction func reset(sender: UIBarButtonItem) {
        timer.invalidate()
        count = 0
        time.text = "0"
    }
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    func result() {
        count++
        time.text = String(count)
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

