//
//  CloudBullet.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 12/09/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

class CloudBullet: BulletNode {
    
    var cloud: Cloud
    var bulletDamage: Int!
    
    init(bulletDamage: Int) {
        
        self.cloud = Cloud()
        self.bulletDamage = bulletDamage
        
        let texture: SKTexture = cloud.cloud01()
        
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
        
        let rotateAnim: SKAction = SKAction.animateWithTextures(cloud.cloud(), timePerFrame: 0.1)
        runAction(SKAction.repeatActionForever(rotateAnim))
        
    }
    
    override func explode() {
        if (exploading == false) {
            
            exploading = true
            
            let stormAnim: SKAction = SKAction.animateWithTextures(cloud.cloud(), timePerFrame: 0.06)
            
            runAction(stormAnim, completion: {() -> Void in
                
                super.explode()
                
            })
        }
    }
    
}