//
//  DarkTower.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 13/09/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

class DarkTower: TowerNode {
    
    let iconString: String = "dark_portrait"
    let dark: Dark = Dark()
    
    override func getPrice() -> Int {
        return 70
    }
    
    init() {
        
        let texture: SKTexture = dark.dark_attack_down_right1()
        
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        
        range = RangeNode(tower: self, range:70)
        
        cooldownDelay = 0.5
        
        userInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func getIconString() -> String {
        return iconString
    }
    
    override func createTower() -> Tower {
        
        let tower: Tower = DarkTower()
        
        return tower
    }
    
    override func createBullet() -> Bullet {
        
        let bullet: BulletNodeShape = MeleeAttack(bulletDamage: 40, bulletSpeed: 0)
        
        return bullet
    }
    
    override func fire(enemy: Enemy) {
        super.fire(enemy)
        
        if let enemyNode: SKNode = enemy.getNode() {
            let currentLocation: CGPoint = CGPoint(x: position.x, y: position.y)
            let targetLocation: CGPoint = CGPoint(x: enemyNode.position.x, y: enemyNode.position.y)
            
            setScale(1)
            
            var textures: [SKTexture]
            
            if (currentLocation.y < targetLocation.y) {
                textures = dark.dark_attack_up_right()
            } else {
                textures = dark.dark_attack_down_right()
            }
            
            if (currentLocation.x > targetLocation.x) {
                xScale = xScale * (-1)
            }
            
            let attackAnim: SKAction = SKAction.animateWithTextures(textures, timePerFrame: 0.07)
            
            runAction(attackAnim)
        }
    }
}
