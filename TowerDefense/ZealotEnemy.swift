//
//  ZealotEnemy.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 21/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

class ZealotEnemy: EnemyNode {
    
    let zealot: Zealot
    
    deinit {
        
    }
    
    init(index: Int) {
        zealot = Zealot()
        
        let texture: SKTexture = zealot.zealot_walk_side1()
        
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        
        name = "enemy"
        id = zealot.ZEALOT_ATTACK_DOWN_RIGHT1 + "_\(index)"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func getSpeed() -> Int {
        return 120
    }
    
    override func getAnimation(currentLocation: CGPoint, nextPoint: CGPoint) -> [SKTexture]? {
        
        var anim: [SKTexture] = zealot.zealot_walk_side()
        setScale(1)
        
        if (currentLocation.x > nextPoint.x) {
            xScale = xScale * (-1)
        }
        else if (currentLocation.y < nextPoint.y) {
            anim = zealot.zealot_walk_up()
        }
        else if (currentLocation.y > nextPoint.y) {
            anim = zealot.zealot_walk_down()
        }
        
        return anim
    }
    
    override func explode() {
        
        removeAllActions()
        
        let deathAnim: SKAction = SKAction.animateWithTextures(zealot.zealot_death(), timePerFrame: 0.1)
        
        runAction(deathAnim, completion: {() -> Void in
            
            super.explode()
            
        })
    }
}