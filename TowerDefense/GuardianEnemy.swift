//
//  GuardianEnemy.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 08/11/2016.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

class GuardianEnemy : EnemyNode {
    
    let guardian: Guardian
    
    deinit {
        
    }
    
    init(index: Int) {
        guardian = Guardian()
        
        let texture: SKTexture = guardian.guardian_walk_side1()
        
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        
        name = "enemy"
        id = guardian.GUARDIAN_WALK_SIDE1 + "_\(index)"
        
        health = 500
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func getSpeed() -> Int {
        return 130
    }
    
    override func getAnimation(currentLocation: CGPoint, nextPoint: CGPoint) -> [SKTexture]? {
        
        var anim: [SKTexture] = guardian.guardian_walk_side()
        setScale(1)
        
        if (currentLocation.x > nextPoint.x) {
            xScale = xScale * (-1)
        }
        else if (currentLocation.y < nextPoint.y) {
            anim = guardian.guardian_walk_up()
        }
        else if (currentLocation.y > nextPoint.y) {
            anim = guardian.guardian_walk_down()
        }
        
        return anim
    }
    
    override func explode() {
        
        removeAllActions()
        
        let deathAnim: SKAction = SKAction.animateWithTextures(guardian.guardian_death(), timePerFrame: 0.1)
        
        runAction(deathAnim, completion: {() -> Void in
            
            super.explode()
            
        })
    }
    
}
