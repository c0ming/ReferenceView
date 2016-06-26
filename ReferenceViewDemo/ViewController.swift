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
    @IBOutlet weak var customView2: CustomView2!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.titleLabel.text = "balabalabala..."
        customView2.customView.titleLabel.text = "2016";
        
        let customView3 = CustomView()
        customView3.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(customView3)
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[customView]-20-[customView3(50)]", options: [], metrics: nil, views: ["customView":customView, "customView3":customView3]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[customView3]-30-|", options: [], metrics: nil, views: ["customView3":customView3]))
        customView3.titleLabel.text = "233"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

