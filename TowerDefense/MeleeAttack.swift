//
//  InvisibleBullet.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 13/09/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

class MeleeAttack: BulletNodeShape {
    
    var bulletDamage: Int!
    var bulletSpeed: Float!
    
    init(bulletDamage: Int, bulletSpeed: Float) {
        self.bulletDamage = bulletDamage
        self.bulletSpeed = bulletSpeed
        
        super.init()
        
        let diameter: Int = 5
        self.path = CGPathCreateWithEllipseInRect(CGRect(origin: CGPointZero, size: CGSize(width: diameter, height: diameter)), nil)
        self.fillColor = UIColor.redColor()
        
        setupPhysicsBody()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func getDamage() -> Int {
        return bulletDamage
    }
    
    override func getSpeed() -> Float {
        return bulletSpeed
    }
    
    override func explode() {
        
        if (exploading == false) {
            exploading = true
            
            Utils.delay(0.8, closure: {
                super.explode()
            })
        }
    }
}