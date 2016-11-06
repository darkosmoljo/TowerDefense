//
//  TemplarTower.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 13/09/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

class TemplarTower: TowerNode {
    
    let iconString: String = "templar_portrait"
    let templar: Templar = Templar()
    
    override func getPrice() -> Int {
        return 20
    }
    
    init() {
        
        let texture: SKTexture = templar.templar_attack_down1()
        
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        
        range = RangeNode(tower: self, range:120)
        
        cooldownDelay = 0.9
        
        userInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func getIconString() -> String {
        return iconString
    }
    
    override func createTower() -> Tower {
        
        let tower: Tower = TemplarTower()
        
        return tower
    }
    
    override func createBullet() -> Bullet {
        
        return CloudBullet(bulletDamage: 9)
    }
    
    override func fire(enemy: Enemy) {
        super.fire(enemy)
        
        if let enemyNode: SKNode = enemy.getNode() {
            let currentLocation: CGPoint = CGPoint(x: position.x, y: position.y)
            let targetLocation: CGPoint = CGPoint(x: enemyNode.position.x, y: enemyNode.position.y)
            
            setScale(1)
            
            var textures: [SKTexture]
            
            if (currentLocation.y < targetLocation.y) {
                textures = templar.templar_attack_up()
            } else {
                textures = templar.templar_attack_down()
            }
            
            if (currentLocation.x > targetLocation.x) {
                xScale = xScale * (-1)
            }
            
            let attackAnim: SKAction = SKAction.animateWithTextures(textures, timePerFrame: 0.11)
            
            runAction(attackAnim)
        }
    }
    
}
