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
        
        let customView2 = CustomView(frame: CGRect(x: 10, y: 210, width: 300, height: 100))
        view.addSubview(customView2)
        customView2.titleLabel.text = "233"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

