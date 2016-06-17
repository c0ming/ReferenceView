//
//  ViewController.swift
//  ReferenceViewDemo
//
//  Created by L on 16/6/17.
//  Copyright © 2016年 c0ming. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customView: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.titleLabel.text = "balabalabala..."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

