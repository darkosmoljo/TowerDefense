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
    var checkpoints: [(CGFloat, CGFloat)]!
    
    
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
    
    override func startPath(checkpoints: [(CGFloat, CGFloat)]) {
        self.checkpoints = checkpoints
        
        self.checkpoints.removeAtIndex(0)
        
        goto(self.checkpoints[0])
    }
    
    func goto(checkpoint: (CGFloat, CGFloat)) {
        
        removeAllActions()
        
        let currentLocation: CGPoint = CGPoint(x: position.x, y: position.y)
        let nextLocation: CGPoint = CGPoint(x: checkpoint.0, y: checkpoint.1)
        
        let params: (Double, [SKTexture]) = self.getAnimationAndSpeed(currentLocation, nextLocation: nextLocation)
        
        let walkAction: SKAction = SKAction.moveTo(nextLocation, duration: params.0)
        let walkAnim: SKAction = SKAction.animateWithTextures(params.1, timePerFrame: 0.1)
        
        self.checkpoints.removeAtIndex(0)
        
        runAction(SKAction.repeatActionForever(walkAnim))
        
        runAction(walkAction, completion: {() -> Void in
            if (self.checkpoints.count > 0) {
                self.goto(self.checkpoints[0])
            }
        })
    }
    
    func getAnimationAndSpeed(currentLocation: CGPoint, nextLocation: CGPoint) -> (Double, [SKTexture]) {
        let speed: Double = hypot(Double(nextLocation.x) - Double(currentLocation.x), Double(nextLocation.y) - Double(currentLocation.y)) / Double(getSpeed())
        
        var anim: [SKTexture] = hydra.hydra_walk_side()
        setScale(1)
        
        if (currentLocation.x > nextLocation.x) {
            xScale = xScale * (-1)
        }
        else if (currentLocation.y < nextLocation.y) {
            anim = hydra.hydra_walk_up()
        }
        else if (currentLocation.y > nextLocation.y) {
            anim = hydra.hydra_walk_down()
        }
        
        return (speed, anim)
    }
    
    override func explode() {
        
        removeAllActions()
        
        let deathAnim: SKAction = SKAction.animateWithTextures(hydra.hydra_death(), timePerFrame: 0.1)
        
        runAction(deathAnim, completion: {() -> Void in
            
            super.explode()
            
        })
    }
    
    
    
}