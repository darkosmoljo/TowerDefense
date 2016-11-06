//
//  FirstTower.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 16/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

class ArchonTower : TowerNode {
    
    let iconString: String = "archon_portrait"
    let archon: Archon = Archon()
    
    override func getPrice() -> Int {
        return 35
    }
    
    init() {
        
        let texture: SKTexture = archon.archon_attack_up_1()
        
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        
        range = RangeNode(tower: self, range:80)
        
        cooldownDelay = 0.8
        
        userInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func getIconString() -> String {
        return iconString
    }
    
    override func createTower() -> Tower {
        
        let tower: Tower = ArchonTower()
        
        return tower
    }
    
    override func createBullet() -> Bullet {
        
        return StormBullet(bulletDamage: 12)
    }
    
    override func fire(enemy: Enemy) {
        super.fire(enemy)
        
        if let enemyNode: SKNode = enemy.getNode() {
            let currentLocation: CGPoint = CGPoint(x: position.x, y: position.y)
            let targetLocation: CGPoint = CGPoint(x: enemyNode.position.x, y: enemyNode.position.y)
            
            setScale(1)
            
            if (currentLocation.x > targetLocation.x) {
                xScale = xScale * (-1)
            }
            
            let attackAnim: SKAction = SKAction.animateWithTextures(archon.archon_attack_up_(), timePerFrame: 0.04)
            
            runAction(attackAnim)
        }
    }
}
