//
//  ReferenceView.swift
//  ReferenceView
//
//  Created by c0ming on 16/6/17.
//  Copyright © 2016年 c0ming. All rights reserved.
//

import UIKit

class ReferenceView: UIView {
    
    @IBOutlet weak var contentView : UIView?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    func setup() {
        Bundle.main().loadNibNamed("\(self.dynamicType)", owner: self, options: nil)
        
        guard let contentView = contentView else {
            fatalError("Should set the contentView's outlet in Interface Builder.")
        }
        addSubview(contentView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView?.frame = self.bounds
        
        if NSFoundationVersionNumber < NSFoundationVersionNumber_iOS_8_0 {
            super.layoutSubviews()
        }
    }
}
