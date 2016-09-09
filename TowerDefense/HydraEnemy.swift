//
//  HydraEnemy.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 06/09/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

class HydraEnemy: EnemyNode {
    
    let hydra: Hydra
    
    
    init(index: Int) {
        hydra = Hydra()
        
        let texture: SKTexture = hydra.hydra_walk_side1()
        
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        
        name = "enemy"
        id = hydra.HYDRA_WALK_SIDE1 + "_\(index)"
        
        health = 160
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func getSpeed() -> Int {
        return 110
    }
    
    override func getAnimation(currentLocation: CGPoint, nextPoint: CGPoint) -> [SKTexture] {
        
        var anim: [SKTexture] = hydra.hydra_walk_side()
        setScale(1)
        
        if (currentLocation.x > nextPoint.x) {
            xScale = xScale * (-1)
        }
        else if (currentLocation.y < nextPoint.y) {
            anim = hydra.hydra_walk_up()
        }
        else if (currentLocation.y > nextPoint.y) {
            anim = hydra.hydra_walk_down()
        }
        
        return anim
    }
    
    override func explode() {
        
        removeAllActions()
        
        let deathAnim: SKAction = SKAction.animateWithTextures(hydra.hydra_death(), timePerFrame: 0.1)
        
        runAction(deathAnim, completion: {() -> Void in
            
            super.explode()
            
        })
    }
    
    
    
}