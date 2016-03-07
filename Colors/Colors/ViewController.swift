//
//  ViewController.swift
//  Colors
//
//  Created by Pradeep Burugu on 3/6/16.
//  Copyright © 2016 Pradeep Burugu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var cView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // self.colorView.backgroundColor = UIColor.materialRedColor()
        self.colorView.backgroundColor = UIColor.materialPinkColor()
        
        self.cView.backgroundColor =
             UIColor.materialRedColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

