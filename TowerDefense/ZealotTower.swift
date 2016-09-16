//
//  ZealotTower.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 13/09/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

class ZealotTower: TowerNode {
    
    let iconString: String = "zealot_portrait"
    let zealot: Zealot = Zealot()
    
    override func getPrice() -> Int {
        return 10
    }
    
    init() {
        
        let texture: SKTexture = zealot.zealot_attack_down_right1()
        
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        
        range = RangeNode(circleOfRadius: 120)
        range?.setTower(self)
        
        cooldownDelay = 0.7
        
        userInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func getIconString() -> String {
        return iconString
    }
    
    override func createTower() -> Tower {
        
        let tower: Tower = ZealotTower()
        
        return tower
    }
    
    override func createBullet() -> Bullet? {
        
        return PlasmaBullet(bulletDamage: 8, bulletSpeed: 300)
    }
    
    override func fire(enemy: Enemy) {
        super.fire(enemy)
        
        if let enemyNode: SKNode = enemy.getNode() {
            let currentLocation: CGPoint = CGPoint(x: position.x, y: position.y)
            let targetLocation: CGPoint = CGPoint(x: enemyNode.position.x, y: enemyNode.position.y)
            
            setScale(1)
            
            var textures: [SKTexture]
            
            if (currentLocation.y < targetLocation.y) {
                textures = zealot.zealot_attack_up_right()
            } else {
                textures = zealot.zealot_attack_down_right()
            }
            
            if (currentLocation.x > targetLocation.x) {
                xScale = xScale * (-1)
            }
            
            let attackAnim: SKAction = SKAction.animateWithTextures(textures, timePerFrame: 0.11)
            
            runAction(attackAnim)
        }
    }
}