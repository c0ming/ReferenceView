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
        
        unarchiveContentView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        unarchiveContentView()
        setupReferenceView()
    }
    
    final override func awakeFromNib() {
        super.awakeFromNib()
        
        setupReferenceView()
    }
    
    final func unarchiveContentView() {
        Bundle.main.loadNibNamed("\(type(of: self))", owner: self, options: nil)
        
        guard let contentView = contentView else {
            fatalError("You must set the contentView's outlet in Interface Builder first!")
        }
        addSubview(contentView)
    }
    
    func setupReferenceView() {
        // extra setup
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView?.frame = self.bounds
        
        if NSFoundationVersionNumber < NSFoundationVersionNumber_iOS_8_0 {
            super.layoutSubviews()
        }
    }
}
