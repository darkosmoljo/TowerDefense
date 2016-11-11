//
//  InfestorEnemy.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 06/11/2016.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

class InfestorEnemy : EnemyNode {
    
    let infestor: Infestor
    
    deinit {
        
    }
    
    init(index: Int) {
        infestor = Infestor()
        
        let texture: SKTexture = infestor.infestor_walk_side1()
        
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        
        name = "enemy"
        id = infestor.INFESTOR_WALK_SIDE1 + "_\(index)"
        
        health = 300
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func getSpeed() -> Int {
        return 125
    }
    
    override func getAnimation(currentLocation: CGPoint, nextPoint: CGPoint) -> [SKTexture]? {
        
        var anim: [SKTexture] = infestor.infestor_walk_side()
        
        setScale(1)
        
        if (currentLocation.x > nextPoint.x) {
            xScale = xScale * (-1)
        }
        else if (currentLocation.y < nextPoint.y) {
            anim = infestor.infestor_walk_up()
        }
        else if (currentLocation.y > nextPoint.y) {
            anim = infestor.infestor_walk_down()
        }
        
        return anim
    }
    
    override func explode() {
        
        removeAllActions()
        
        let deathAnim: SKAction = SKAction.animateWithTextures(infestor.infestor_death(), timePerFrame: 0.1)
        
        runAction(deathAnim, completion: {() -> Void in
            
            super.explode()
            
        })
    }
    
}
