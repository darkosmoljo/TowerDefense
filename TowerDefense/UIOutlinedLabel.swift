//
//  UIOutlinedLabel.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 07/09/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

import UIKit

class UIOutlinedLabel: UILabel {
    
    var outlineWidth: CGFloat = 1
    var outlineColor: UIColor = UIColor.whiteColor()
    
    override func drawTextInRect(rect: CGRect) {
        
        let strokeTextAttributes = [
            NSStrokeColorAttributeName : outlineColor,
            NSStrokeWidthAttributeName : -1 * outlineWidth,
            ]
        
        self.attributedText = NSAttributedString(string: self.text ?? "", attributes: strokeTextAttributes)
        super.drawTextInRect(rect)
    }
}