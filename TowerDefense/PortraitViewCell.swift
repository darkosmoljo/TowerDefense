//
//  PortraitViewCell.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 16/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import UIKit

class PortraitViewCell : UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    
    func setImage(imageString: String) {
        imageView.image = UIImage(named: imageString)
        imageView.layer.cornerRadius = 5
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.darkGrayColor().CGColor
        imageView.layer.masksToBounds = true
    }
    
    func setPriceLabelText(price: Int) {
        priceLabel.text = "\(price)"
    }
}