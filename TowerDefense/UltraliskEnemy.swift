//
//  UltraliskEnemy.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 07/11/2016.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

class UltraliskEnemy : EnemyNode {
    
    let ultralisk: Ultralisk
    
    deinit {
        
    }
    
    init(index: Int) {
        ultralisk = Ultralisk()
        
        let texture: SKTexture = ultralisk.ultralisk_walk_side1()
        
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        
        name = "enemy"
        id = ultralisk.ULTRALISK_WALK_SIDE1 + "_\(index)"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func getSpeed() -> Int {
        return 120
    }
    
    override func getAnimation(currentLocation: CGPoint, nextPoint: CGPoint) -> [SKTexture]? {
        
        var anim: [SKTexture] = ultralisk.ultralisk_walk_side()
        setScale(1)
        
        if (currentLocation.x > nextPoint.x) {
            xScale = xScale * (-1)
        }
        else if (currentLocation.y < nextPoint.y) {
            anim = ultralisk.ultralisk_walk_up()
        }
        else if (currentLocation.y > nextPoint.y) {
            anim = ultralisk.ultralisk_walk_down()
        }
        
        return anim
    }
    
    override func explode() {
        
        removeAllActions()
        
        let deathAnim: SKAction = SKAction.animateWithTextures(ultralisk.ultralisk_death(), timePerFrame: 0.1)
        
        runAction(deathAnim, completion: {() -> Void in
            
            super.explode()
            
        })
    }
    
}
