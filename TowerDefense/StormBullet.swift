//
//  StormBullet.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 08/09/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

class StormBullet: BulletNode {
    
    var storm: Storm
    var bulletDamage: Int!
    
    init(bulletDamage: Int) {
        
        self.storm = Storm()
        self.bulletDamage = bulletDamage
        
        let texture: SKTexture = storm.storm1()
        
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func isAOE() -> Bool {
        return true
    }
    
    override func getDamage() -> Int {
        return bulletDamage
    }
    
    override func animate() {
        
        let rotateAnim: SKAction = SKAction.animateWithTextures(storm.storm(), timePerFrame: 0.1)
        runAction(SKAction.repeatActionForever(rotateAnim))
        
    }
    
    override func explode() {
        if (exploading == false) {
        
            exploading = true
            
            let stormAnim: SKAction = SKAction.animateWithTextures(storm.storm(), timePerFrame: 0.06)
            
            runAction(stormAnim, completion: {() -> Void in
                
                super.explode()
                
            })
        }
    }
    
}