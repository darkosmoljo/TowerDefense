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
    let range: Range = RangeNode(circleOfRadius: 80)
    
    override func getPrice() -> Int {
        return 35
    }
    
    init() {
        
        let texture: SKTexture = archon.archon_attack_up_1()
        
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        
        range.setTower(self)
        
        userInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func getIconString() -> String {
        return iconString
    }

    override func getRange() -> Range {
        return range
    }
    
    override func createTower() -> Tower {
        
        let tower: Tower = ArchonTower()
        
        return tower
    }
    
    override func toggleRangeVisibility() {
        if (range.getNode().alpha == 0) {
            range.getNode().alpha = 0.2
        } else {
            range.getNode().alpha = 0
        }
    }
    
    override func createBullet() -> Bullet? {
        
        return PlasmaBullet()
    }
    
    override func fire(enemy: Enemy) {
        super.fire(enemy)
        
        let currentLocation: CGPoint = CGPoint(x: position.x, y: position.y)
        let targetLocation: CGPoint = CGPoint(x: enemy.getNode().position.x, y: enemy.getNode().position.y)
        
        setScale(1)
        
        if (currentLocation.x > targetLocation.x) {
            xScale = xScale * (-1)
        }
        
        let attackAnim: SKAction = SKAction.animateWithTextures(archon.archon_attack_up_(), timePerFrame: 0.1)
        
        runAction(attackAnim)
    }
}