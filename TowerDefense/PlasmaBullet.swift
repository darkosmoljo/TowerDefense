//
//  PlasmaBullet.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 25/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

class PlasmaBullet: BulletNode {
    
    var plasma: Plasma!
    
    init() {
        
        self.plasma = Plasma()
        
        let texture: SKTexture = plasma.plasma_bullet_1()
        
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func animate() {
        
        let rotateAnim: SKAction = SKAction.animateWithTextures(plasma.plasma_bullet_(), timePerFrame: 0.1)
        runAction(SKAction.repeatActionForever(rotateAnim))
        
    }
    
    override func getDamage() -> Int {
        return 14
    }
    
    override func getSpeed() -> Float {
        return 300.0
    }
}